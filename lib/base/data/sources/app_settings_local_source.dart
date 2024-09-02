import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/data/stock/hive_disk_cache.dart';
import 'package:beneficiary/base/domain/models/app_settings/app_settings.dart';

import 'package:stock/stock.dart';

abstract class AppSettingsLocalSource {
  /// stream of app settings
  Stream<AppSettingsModel> getAppSettings();

  /// update app settings
  Future<void> updateAppSettings(AppSettingsModel appSettingsModel);

  /// stream of first run
  Stream<bool?> getFirstRunFlag();

  /// update first run
  Future<void> updateFirstRunFlag(bool value);
}

@Singleton(as: AppSettingsLocalSource)
class AppSettingsLocalSourceImpl extends AppSettingsLocalSource {
  AppSettingsLocalSourceImpl(Box storage) {
    final secureStorage = HiveDiskCache(storage);
    _appSettingsStorage = secureStorage;
  }

  static const _storageSettingsPrefix = 'AppSettingsLocalSource';
  static const _keyAppSettings = '$_storageSettingsPrefix.token';

  static const _keyFirstRun = '$_storageSettingsPrefix.firstRun';

  late SourceOfTruth<String, dynamic> _appSettingsStorage;

  @override
  Stream<AppSettingsModel> getAppSettings() => _appSettingsStorage
      .reader(_keyAppSettings)
      .map((event) => AppSettingsModel.fromJson(jsonDecode(event ?? '{}')));

  @override
  Future<void> updateAppSettings(AppSettingsModel appSettingsModel) =>
      _appSettingsStorage.write(
          _keyAppSettings, jsonEncode(appSettingsModel.toJson()));

  @override
  Stream<bool?> getFirstRunFlag() {
    return _appSettingsStorage
        .reader(_keyFirstRun)
        .map((event) => bool.tryParse(event ?? ''));
  }

  @override
  Future<void> updateFirstRunFlag(bool value) {
    return _appSettingsStorage.write(_keyFirstRun, value.toString());
  }
}
