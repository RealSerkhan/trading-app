import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:beneficiary/features/trading/domain/use_cases/get_symbols_use_case.dart';
import 'package:beneficiary/features/trading/domain/use_cases/listen_price_updates_use_case.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'trading_event.dart';
import 'trading_state.dart';

@injectable
class TradingBloc extends Bloc<TradingEvent, TradingState> {
  final GetSymbolsUseCase getSymbolsUseCase;
  final ListenPriceUpdatesUseCase listenPriceUpdates;

  TradingBloc({
    required this.getSymbolsUseCase,
    required this.listenPriceUpdates,
  }) : super(TradingInitial()) {
    on<FetchOandaSymbolsEvent>(_fetchOandaSymbols);
    on<StartPriceUpdatesEvent>(_startPriceUpdates);
    on<PriceUpdatedEvent>(_onPriceUpdated);
    on<SearchSymbolsEvent>(_onSearchSymbols);
  }

  final List<TradingInstrument> _allSymbols = <TradingInstrument>[];

  Future<void> _fetchOandaSymbols(FetchOandaSymbolsEvent event, Emitter<TradingState> emit) async {
    emit(TradingLoading());

    final result = await getSymbolsUseCase('oanda');
    result.fold((failure) => emit(TradingError(failure)), (instruments) {
      final limitedCountInstruments = instruments.getRange(0, 50).toList();
      _allSymbols.addAll(limitedCountInstruments);
      emit(TradingLoaded(limitedCountInstruments));
      add(StartPriceUpdatesEvent(limitedCountInstruments));
    });
  }

  void _startPriceUpdates(StartPriceUpdatesEvent event, Emitter<TradingState> emit) {
    listenPriceUpdates.createObservable(event.tradingInstruments).listen((instrument) {
      add(PriceUpdatedEvent(instrument));
    });
  }

  void _onPriceUpdated(PriceUpdatedEvent event, Emitter<TradingState> emit) {
    // If the TradingState is TradingLoaded, we update the instrument price.
    final currentState = state;
    if (currentState is TradingLoaded) {
      final updatedList = currentState.instruments.map((inst) {
        if (inst.symbol == event.instrument.symbol) {
          return inst.copyWith(price: event.instrument.price);
        } else {
          return inst;
        }
      }).toList();
      emit(TradingLoaded(updatedList));
    }
  }

  void _onSearchSymbols(SearchSymbolsEvent event, Emitter<TradingState> emit) {
    final currentState = state;
    if (currentState is TradingLoaded) {
      final query = event.searchQuery.toLowerCase();
      final filtered = _allSymbols.where((inst) {
        return inst.symbol.toLowerCase().contains(query) ||
            inst.displaySymbol.toLowerCase().contains(query) ||
            inst.description.toLowerCase().contains(query);
      }).toList();

      emit(TradingLoaded(filtered));
    }
  }
}
