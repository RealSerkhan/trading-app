import 'package:beneficiary/base/data/sources/base_remote_source.dart';
import 'package:beneficiary/base/networking/http_client.dart';
import 'package:beneficiary/features/trading/data/models/trading_instrument/trading_instrument_model.dart';
import 'package:injectable/injectable.dart';

abstract class TradingRemoteDataSource {
  Future<List<TradingInstrumentModel>> getSymbols({required String symbolName});
}

@LazySingleton(as: TradingRemoteDataSource)
class TradingRemoteDataSourceImpl extends BaseRemoteSource implements TradingRemoteDataSource {
  const TradingRemoteDataSourceImpl(super._client, super.sdk);

  @override
  String get loggerTag => 'Trading Remote Source';

  @override
  Future<List<TradingInstrumentModel>> getSymbols({required String symbolName}) {
    return request<List<TradingInstrumentModel>>(
        method: HttpMethod.GET,
        endpoint: '/forex/symbol',
        callId: 'Get All Symbols',
        queryParameters: {
          "exchange": symbolName,
        },
        serializer: (data) {
          return List.from((data as List).map((json) => TradingInstrumentModel.fromJson(json)));
        });
  }
}
