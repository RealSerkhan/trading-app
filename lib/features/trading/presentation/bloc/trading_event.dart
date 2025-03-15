import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:equatable/equatable.dart';

abstract class TradingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchOandaSymbolsEvent extends TradingEvent {}

class StartPriceUpdatesEvent extends TradingEvent {}

class PriceUpdatedEvent extends TradingEvent {
  final TradingInstrument instrument;
  PriceUpdatedEvent(this.instrument);

  @override
  List<Object?> get props => [instrument];
}

class SearchSymbolsEvent extends TradingEvent {
  final String searchQuery;
  SearchSymbolsEvent(this.searchQuery);

  @override
  List<Object?> get props => [searchQuery];
}