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

  WebSocketService(@Named('WebsocketUrl') this.url);
  WebSocketChannel? _channel;
  final StreamController<TradingInstrument> _controller = StreamController.broadcast();

  bool _isConnected = false;

  void connect() {
    if (_isConnected) return;
    Logger.i("Connecting to websocket: $url");

    _channel = WebSocketChannel.connect(Uri.parse(url));
    _isConnected = true;

    _channel!.stream.listen((data) {
      // The Finnhub response looks like:
      // {
      //   "data": [
      //     { "p": 7296.89, "s": "BINANCE:BTCUSDT", "t": 1575526691134, "v": 0.011467 }
      //   ],
      //   "type": "trade"
      // }

      try {
        final decoded = json.decode(data);
        if (decoded["data"] != null && decoded["type"] == "trade") {
          List<dynamic> trades = decoded["data"];
          for (var trade in trades) {
            final symbol = trade["s"] as String;
            final price = trade["p"] as double;
            final instrument = TradingInstrument(
              description: symbol, // We only have symbol from the feed.
              displaySymbol: symbol,
              symbol: symbol,
              price: price,
            );
            _controller.add(instrument);
          }
        }
      } catch (e) {
        _controller.addError(e);
      }
    }, onError: (error) {
      Logger.e("WebSocket error: $error");
      _controller.addError(error);
    }, onDone: () {
      Logger.i("WebSocket closed.");
      _controller.close();
      _isConnected = false;
    });
  }

  Stream<TradingInstrument> get stream => _controller.stream;

  void disconnect() {
    Logger.i("Disconnecting WebSocket...");
    _isConnected = false;
    _channel?.sink.close(status.normalClosure);
    _channel = null;
  }
}
