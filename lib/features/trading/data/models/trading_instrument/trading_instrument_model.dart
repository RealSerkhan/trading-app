// lib/data/models/trading_instrument_model.dart
import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trading_instrument_model.freezed.dart';
part 'trading_instrument_model.g.dart';

@freezed
class TradingInstrumentModel with _$TradingInstrumentModel {
  const factory TradingInstrumentModel({
    required String description,
    required String displaySymbol,
    required String symbol,
  }) = _TradingInstrumentModel;

  factory TradingInstrumentModel.fromJson(Map<String, dynamic> json) =>
      _$TradingInstrumentModelFromJson(json);
}

// Extension method to convert the data model to the domain entity:
extension TradingInstrumentModelX on TradingInstrumentModel {
  TradingInstrument toEntity({double price = 0.0}) {
    return TradingInstrument(
      description: description,
      displaySymbol: displaySymbol,
      symbol: symbol,
      price: price,
    );
  }
}