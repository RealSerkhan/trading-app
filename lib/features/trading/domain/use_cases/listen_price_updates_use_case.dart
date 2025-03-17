import 'package:beneficiary/base/domain/usecases/subject_usecase.dart';
import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:beneficiary/features/trading/domain/repos/trading_repo.dart';

import 'package:injectable/injectable.dart';

@injectable
class ListenPriceUpdatesUseCase extends SubjectUseCase<List<TradingInstrument>, TradingInstrument> {
  ListenPriceUpdatesUseCase(this._repository);
  final TradingRepository _repository;

  @override
  Stream<TradingInstrument> createObservable(List<TradingInstrument> params) {
    return _repository.listenPriceUpdates(params);
  }
}
