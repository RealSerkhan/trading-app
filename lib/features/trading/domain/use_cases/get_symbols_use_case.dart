import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/usecases/use_case.dart';
import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:beneficiary/features/trading/domain/repos/trading_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@injectable
class GetSymbolsUseCase extends EitherUseCase<List<TradingInstrument>, String> {
  const GetSymbolsUseCase(this._repository);

  final TradingRepository _repository;

  @override
  Future<Either<Failure, List<TradingInstrument>>> doWork(String params) {
    return _repository.getSymbols(symbolName: params);
  }
}
