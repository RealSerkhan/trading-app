import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_helpers/store/app_module_impl.dart';
import '../../../test_helpers/store/fake_string_sot.dart';
import '../../../test_helpers/stream/result_listener.dart';

void main() {
  test('theme local source start with null', () async {
    final themeLocalSource =
        AppModuleImpl().appThemeLocalSource(FakeStringSourceOfTruth());

    final themeListener = ResultListener(themeLocalSource.reader(''));

    // Wait for initialization time
    await Future<void>.delayed(const Duration(milliseconds: 100));

    await Future<void>.delayed(const Duration(milliseconds: 100));
    final themeResult = await themeListener.stopAndGetResult();

    expect(themeResult, equals([null]));
  });

  test('change theme local source multiple times', () async {
    final themeLocalSource =
        AppModuleImpl().appThemeLocalSource(FakeStringSourceOfTruth());

    final languageListener = ResultListener(themeLocalSource.reader(''));

    // Wait for initialization time
    await Future<void>.delayed(const Duration(milliseconds: 100));

    await themeLocalSource.write('', ThemeEnum.Dark);
    await themeLocalSource.write('', ThemeEnum.Light);

    await Future<void>.delayed(const Duration(milliseconds: 100));
    final themeResult = await languageListener.stopAndGetResult();

    expect(themeResult, equals([null, ThemeEnum.Dark, ThemeEnum.Light]));
  });

  test('change theme local source', () async {
    final themeLocalSource =
        AppModuleImpl().appThemeLocalSource(FakeStringSourceOfTruth());

    final themeListener = ResultListener(themeLocalSource.reader(''));

    // Wait for initialization time
    await Future<void>.delayed(const Duration(milliseconds: 100));

    await themeLocalSource.write('', ThemeEnum.Dark);
    await themeLocalSource.write('', null);

    await Future<void>.delayed(const Duration(milliseconds: 100));
    final themeResult = await themeListener.stopAndGetResult();

    expect(themeResult, equals([null, ThemeEnum.Dark, null]));
  });
}
