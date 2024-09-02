import 'package:beneficiary/base/data/sources/base_remote_source.dart';
import 'package:beneficiary/base/domain/models/app_settings/app_settings.dart';
import 'package:injectable/injectable.dart';

abstract class AppRemoteSource {
  /// fetch app [AppSettingsModel] (configuration) from server.
  Future<AppSettingsModel> getAppSettings();
}

@LazySingleton(as: AppRemoteSource)
class AppRemoteSourceImpl extends BaseRemoteSource implements AppRemoteSource {
  AppRemoteSourceImpl(
    super.client,
    super.sdk,
  );

  @override
  String get loggerTag => 'AppRemoteSource';

  @override
  Future<AppSettingsModel> getAppSettings() => Future.value(AppSettingsModel(
        maxTopUpPerMonthVerified: 500.0,
        maxTopUpPerMonthUnverified: 1000.0,
        maxTopUpPerBeneficiary: 1000.0,
        maxTotalTopUpPerMonth: 3000.0,
        topUpTransactionFee: 1.0,
        availableTopUpOptions: [5.0, 10.0, 20.0, 30.0, 50.0, 75.0, 100.0],
      ));
}
