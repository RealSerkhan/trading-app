import 'package:beneficiary/base/data/repos/base_repo_impl.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/features/trading/data/models/trading_instrument/trading_instrument_model.dart';
import 'package:beneficiary/features/trading/data/sources/trading_remote_source.dart';
import 'package:beneficiary/features/trading/data/sources/websocket_source.dart';
import 'package:beneficiary/features/trading/domain/entities/trading_instrument.dart';
import 'package:beneficiary/features/trading/domain/repos/trading_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: TradingRepository)
class TradingRepoImpl extends BaseRepositoryImpl implements TradingRepository {
  TradingRepoImpl(
    this._remoteDataSource,
    this.webSocketService,
    super.authLocal,
  );

  final TradingRemoteDataSource _remoteDataSource;
  final WebSocketService webSocketService;

  @override
  Future<Either<Failure, List<TradingInstrument>>> getSymbols({required String symbolName}) {
    return request(
      () => _remoteDataSource.getSymbols(symbolName: symbolName),
      toDomainHandler: (tradings) =>
          (tradings as List<TradingInstrumentModel>).map((trading) => (trading).toEntity()).toList(),
    );
  }

  @override
  Stream<TradingInstrument> listenPriceUpdates() {
    webSocketService.connect();
    return webSocketService.stream;
  }
}
