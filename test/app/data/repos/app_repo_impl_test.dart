import 'package:beneficiary/base/data/repos/app_repo_impl.dart';
import 'package:beneficiary/base/data/sources/app_remote_source.dart';
import 'package:beneficiary/base/data/sources/app_settings_local_source.dart';
import 'package:beneficiary/base/data/sources/auth_local_datasource.dart';
import 'package:beneficiary/base/di/app_module.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/app_constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../test_helpers/store/cached_and_mocked_source_of_truth.dart';
import '../../../test_helpers/stream/result_listener.dart';

void main() {
  test('observe app language must return SystemDefault at first', () async {
    final LanguageLocalSource fakeLanguage =
        createMockedSourceOfTruthFromMethods(
      (key) => Stream<LanguageEnum?>.fromIterable([null, LanguageEnum.Arabic]),
      (key, output) => Future.value(),
    );

    final ThemeLocalSource fakeTheme = createMockedSourceOfTruth();

    when(fakeLanguage.reader('')).thenAnswer(
      (_) => Stream<LanguageEnum?>.fromIterable([null, LanguageEnum.Arabic]),
    );
    final AppRepositoryImpl appRepo = AppRepositoryImpl(
      fakeLanguage,
      fakeTheme,
      FakeAppSettingsRemoteSource(),
      FakeAppSettingsLocalSource(),
      FakeAuthLocalSource(),
    );

    final resultListener = ResultListener(appRepo.observeLanguage());
    await Future<void>.delayed(const Duration(milliseconds: 100));

    await Future<void>.delayed(const Duration(milliseconds: 100));
    final languageResult = await resultListener.stopAndGetResult();

    expect(
      languageResult,
      equals([AppConstants.defaultLanguage, LanguageEnum.Arabic]),
    );
    verify(fakeLanguage.reader('')).called(1);
  });

  test('change app language call language local source write', () async {
    final LanguageLocalSource fakeLanguage = createMockedSourceOfTruth();
    final ThemeLocalSource fakeTheme = createMockedSourceOfTruth();
    final AppRepositoryImpl appRepo = AppRepositoryImpl(
      fakeLanguage,
      fakeTheme,
      FakeAppSettingsRemoteSource(),
      FakeAppSettingsLocalSource(),
      FakeAuthLocalSource(),
    );

    await appRepo.changeLanguage(LanguageEnum.Arabic);

    verify(fakeLanguage.write('', LanguageEnum.Arabic)).called(1);
  });

  test('observe app theme must return SystemDefault at first', () async {
    final LanguageLocalSource fakeLanguage = createMockedSourceOfTruth();
    final ThemeLocalSource fakeTheme = createMockedSourceOfTruth();
    when(fakeTheme.reader('')).thenAnswer(
      (_) => Stream<ThemeEnum?>.fromIterable([null, ThemeEnum.Dark]),
    );
    final AppRepositoryImpl appRepo = AppRepositoryImpl(
      fakeLanguage,
      fakeTheme,
      FakeAppSettingsRemoteSource(),
      FakeAppSettingsLocalSource(),
      FakeAuthLocalSource(),
    );

    final resultListener = ResultListener(appRepo.observeTheme());
    await Future<void>.delayed(const Duration(milliseconds: 100));

    await Future<void>.delayed(const Duration(milliseconds: 100));
    final themeResult = await resultListener.stopAndGetResult();

    expect(
      themeResult,
      equals([ThemeEnum.SystemDefault, ThemeEnum.Dark]),
    );
    verify(fakeTheme.reader('')).called(1);
  });

  test('change app theme call theme local source write', () async {
    final LanguageLocalSource fakeLanguage = createMockedSourceOfTruth();
    final ThemeLocalSource fakeTheme = createMockedSourceOfTruth();
    final AppRepositoryImpl appRepo = AppRepositoryImpl(
      fakeLanguage,
      fakeTheme,
      FakeAppSettingsRemoteSource(),
      FakeAppSettingsLocalSource(),
      FakeAuthLocalSource(),
    );

    await appRepo.changeTheme(ThemeEnum.Dark);
    verify(fakeTheme.write('', ThemeEnum.Dark)).called(1);
  });
}

class FakeAppSettingsRemoteSource extends Fake implements AppRemoteSource {}

class FakeAppSettingsLocalSource extends Fake
    implements AppSettingsLocalSource {}

class FakeAuthLocalSource extends Fake implements AuthLocalSource {}
