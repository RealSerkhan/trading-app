import 'package:beneficiary/base/data/sources/app_remote_source.dart';
import 'package:dart_kit/dart_kit.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/data/repos/base_repo_impl.dart';
import 'package:beneficiary/base/data/sources/app_settings_local_source.dart';
import 'package:beneficiary/base/di/app_module.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/models/app_settings/app_settings.dart';
import 'package:beneficiary/base/domain/repos/app_repo.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';

@Singleton(as: AppRepository)
class AppRepositoryImpl extends BaseRepositoryImpl implements AppRepository {
  const AppRepositoryImpl(
    this._languageLocalSource,
    this._themeLocalSource,
    this._appSettingRemoteSource,
    this._appSettingsLocalSource,
    super.authLocal,
  );

  final LanguageLocalSource _languageLocalSource;
  final ThemeLocalSource _themeLocalSource;
  final AppSettingsLocalSource _appSettingsLocalSource;
  final AppRemoteSource _appSettingRemoteSource;

  @override
  Future<void> changeLanguage(LanguageEnum language) =>
      _languageLocalSource.write('lang', language);

  @override
  Stream<LanguageEnum> observeLanguage() => _languageLocalSource
      .reader('lang')
      .mapNullTo(() => LanguageEnum.SystemDefault);

  @override
  Future<void> changeTheme(ThemeEnum theme) =>
      _themeLocalSource.write('theme', theme);

  @override
  Stream<ThemeEnum> observeTheme() => _themeLocalSource
      .reader('theme')
      .mapNullTo(() => ThemeEnum.SystemDefault);

  @override
  Stream<AppSettingsModel> observeAppSettings() {
    return _appSettingsLocalSource.getAppSettings();
  }

  @override
  Future<void> updateAppSettings(AppSettingsModel appSettingsModel) {
    return _appSettingsLocalSource.updateAppSettings(appSettingsModel);
  }

  @override
  Future<Either<Failure, AppSettingsModel>> getRemoteAppSettings() {
    return request(() => _appSettingRemoteSource.getAppSettings());
  }
  
  @override
  Stream<bool?> observeFirstRunFlag() {
    // TODO: implement observeFirstRunFlag
    throw UnimplementedError();
  }
  
  @override
  Future<void> updateFirstRunFlag(bool flag) {
    // TODO: implement updateFirstRunFlag
    throw UnimplementedError();
  }

  

 

 
  
 
}
