import 'dart:async';
import 'dart:convert';

import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:dart_kit/dart_kit.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

@LazySingleton()
class WebSocketService {
  final String url;
  WebSocketChannel? _channel;
  final StreamController<TradingInstrument> _controller = StreamController<TradingInstrument>.broadcast();
  StreamSubscription? _subscription;

  bool _isConnected = false;
  final Set<String> _subscribedSymbols = {}; // Track subscribed symbols

  WebSocketService(@Named('WebsocketUrl') this.url);
  init(List<TradingInstrument> tradingInstruments) {
    
    for (var tradingInstrument in tradingInstruments) {
      _subscribedSymbols.add(tradingInstrument.symbol);
    }

  }

  /// Connect to the WebSocket (no-op if already connected).
  void connect() {
    if (_isConnected) return;

    _isConnected = true;
    Logger.i('Connecting to WebSocket: $url');

    // Initialize channel
    _channel = WebSocketChannel.connect(Uri.parse(url));

    // Listen to channel stream
    _subscription = _channel!.stream.listen(
      _onData,
      onError: _onError,
      onDone: _onDone,
      cancelOnError: false,
    );

    // Subscribe to any previously requested symbols
    for (final symbol in _subscribedSymbols) {
      subscribe(symbol);
    }
  }

  /// Subscribe to a trading symbol
  void subscribe(String symbol) {
    if (!_isConnected) {
      Logger.w("WebSocket not connected. Connecting now...");
      connect(); // Ensure connection before subscribing
    }

    Logger.i("Subscribing to: $symbol");
    _channel?.sink.add(jsonEncode({
      "type": "subscribe",
      "symbol": symbol,
    }));

    _subscribedSymbols.add(symbol); // Track symbol
  }

  /// Unsubscribe from a trading symbol
  void unsubscribe(String symbol) {
    if (!_isConnected) return;

    Logger.i("Unsubscribing from: $symbol");
    _channel?.sink.add(jsonEncode({
      "type": "unsubscribe",
      "symbol": symbol,
    }));

    _subscribedSymbols.remove(symbol); // Remove from tracking
  }

  /// Process incoming data from the WebSocket.
  void _onData(dynamic data) {
    try {
      final decoded = json.decode(data);
      if (decoded['type'] == 'trade' && decoded['data'] != null) {
        final trades = decoded['data'] as List;
        for (var trade in trades) {
          final symbol = trade['s'] as String;
          final price = trade['p'] as double;
          final instrument = TradingInstrument(
            description: symbol,
            displaySymbol: symbol,
            symbol: symbol,
            price: price,
          );
          _controller.add(instrument);
        }
      } else {
        Logger.d('Received non-trade message: $decoded');
      }
    } catch (e, stackTrace) {
      Logger.e(
        'Error parsing WebSocket data: $e',
      );
      _controller.addError(e, stackTrace);
    }
  }

  /// Handle WebSocket errors
  void _onError(Object error, [StackTrace? stackTrace]) {
    Logger.e('WebSocket error: $error');
    _controller.addError(error, stackTrace);
    reconnect();
  }

  /// Called when the WebSocket stream is closed.
  void _onDone() {
    Logger.i('WebSocket closed.');
    _isConnected = false;
    reconnect();
  }

  /// Reconnect with delay
  void reconnect() {
    if (_isConnected) return;

    Logger.w('Reconnecting in 3 seconds...');
    Future.delayed(const Duration(seconds: 3), () {
      if (!_isConnected) {
        connect();
      }
    });
  }

  /// Public stream exposing TradingInstrument updates.
  Stream<TradingInstrument> get stream => _controller.stream;

  /// Disconnect from the WebSocket & clean up resources.
  void disconnect() {
    if (!_isConnected) return;

    Logger.i('Disconnecting WebSocket...');
    _isConnected = false;
    _subscription?.cancel();
    _subscription = null;
    _channel?.sink.close(status.normalClosure);
    _channel = null;
  }

  /// Dispose resources
  Future<void> dispose() async {
    await _subscription?.cancel();
    await _controller.close();
    _channel?.sink.close(status.normalClosure);
  }
}
