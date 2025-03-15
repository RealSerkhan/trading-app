import 'package:equatable/equatable.dart';

class TradingInstrument extends Equatable {
  final String description;
  final String displaySymbol;
  final String symbol;
  final double price;

  const TradingInstrument({
    required this.description,
    required this.displaySymbol,
    required this.symbol,
    required this.price,
  });

  TradingInstrument copyWith({
    String? description,
    String? displaySymbol,
    String? symbol,
    double? price,
  }) {
    return TradingInstrument(
      description: description ?? this.description,
      displaySymbol: displaySymbol ?? this.displaySymbol,
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
    );
  }

  @override
  List<Object> get props => [description, displaySymbol, symbol, price];
}