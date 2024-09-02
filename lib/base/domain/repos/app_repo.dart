import 'package:dartz/dartz.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/models/app_settings/app_settings.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';

/// The interface for an app repository, which is responsible for storing and
/// retrieving information about the app's language and theme preferences.
abstract class AppRepository {
  /// Changes the app's language preference to the specified language.
  ///
  /// Returns a [Future] that completes when the change has been persisted.
  Future<void> changeLanguage(LanguageEnum language);

  /// Returns a [Stream] that emits the current language preference.
  Stream<LanguageEnum> observeLanguage();

  /// Changes the app's theme preference to the specified theme.
  ///
  /// Returns a [Future] that completes when the change has been persisted.
  Future<void> changeTheme(ThemeEnum theme);

  /// Returns a [Stream] that emits the current theme preference.
  Stream<ThemeEnum> observeTheme();

  Stream<AppSettingsModel> observeAppSettings();
  Future<void> updateAppSettings(AppSettingsModel appSettingsModel);
  Future<Either<Failure, AppSettingsModel>> getRemoteAppSettings();
  Future<void> updateFirstRunFlag(bool flag);

  Stream<bool?> observeFirstRunFlag();
}
