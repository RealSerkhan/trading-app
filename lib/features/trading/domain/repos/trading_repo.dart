import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:dartz/dartz.dart';

import '../../../../base/domain/errors/failure.dart';

abstract class TradingRepository {
  Stream<TradingInstrument> listenPriceUpdates();
  Future<Either<Failure, List<TradingInstrument>>> getSymbols({required String symbolName});
}
