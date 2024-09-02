import 'package:beneficiary/app/app_router.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:beneficiary/app_router.dart';
import 'package:beneficiary/base/data/stock/app_disk_cache.dart';
import 'package:beneficiary/base/data/stock/disk_serializer.dart';
import 'package:beneficiary/base/data/stock/hive_disk_cache.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';

import 'package:stock/stock.dart';

typedef LanguageLocalSource = SourceOfTruth<String, LanguageEnum>;
typedef ThemeLocalSource = SourceOfTruth<String, ThemeEnum>;
typedef FirstRunFlagLocalSource = SourceOfTruth<String, bool>;

@module
abstract class AppModule {
  @singleton
  AppRouter getAppRouter() => AppRouter();

  @singleton
  FlutterSecureStorage getSecureStorage() => const FlutterSecureStorage();

  @singleton
  Connectivity getConnectivity() => Connectivity();

  @lazySingleton
  Logger get logger => Logger();

  //TODO change to ar locale
  @lazySingleton
  Locale get locale =>
      LanguageEnum.SystemDefault.asLocale ?? const Locale('en');

  @preResolve
  @singleton
  Future<Box> appCacheBox() async {
    // Create a box collection
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    return Hive.openBox('base_sot_box');
  }

  @singleton
  AppDiskCache appDiskCache(Box box) => HiveDiskCache(box);

  @singleton
  LanguageLocalSource appLanguageLocalSource(AppDiskCache appCache) =>
      appCache.createCache(
        keyPrefix: 'app_language',
        serializer: DiskSerializer.forPrimitive(
          toDisk: (language) => language.name,
          fromDisk: (diskData) => LanguageEnum.values.byName(diskData),
        ),
      );

  @singleton
  ThemeLocalSource appThemeLocalSource(AppDiskCache appCache) =>
      appCache.createCache(
        keyPrefix: 'app_theme',
        serializer: DiskSerializer.forPrimitive(
          toDisk: (theme) => theme.name,
          fromDisk: (diskData) => ThemeEnum.values.byName(diskData),
        ),
      );

  @singleton
  FirstRunFlagLocalSource firstRunFlagLocalSource(AppDiskCache appCache) =>
      appCache.createCache(
        keyPrefix: 'app_first_run_flag',
        serializer: DiskSerializer.forPrimitive(
          toDisk: (flag) => flag ? '1' : '0',
          fromDisk: (diskData) => diskData == '1',
        ),
      );
}
