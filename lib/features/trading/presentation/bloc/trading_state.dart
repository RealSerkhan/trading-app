import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:equatable/equatable.dart';

abstract class TradingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class TradingInitial extends TradingState {}

class TradingLoading extends TradingState {}

class TradingLoaded extends TradingState {
  final List<TradingInstrument> instruments;

  TradingLoaded(this.instruments);

  @override
  List<Object?> get props => [instruments];
}

class TradingError extends TradingState {
  final Failure failure;
  TradingError(this.failure);

  @override
  List<Object?> get props => [failure];
}
