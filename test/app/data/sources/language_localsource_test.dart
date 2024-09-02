import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_helpers/store/app_module_impl.dart';
import '../../../test_helpers/store/fake_string_sot.dart';
import '../../../test_helpers/stream/result_listener.dart';

void main() {
  test('language start with null', () async {
    final languageLocalSource =
        AppModuleImpl().appLanguageLocalSource(FakeStringSourceOfTruth());

    final languageListener = ResultListener(languageLocalSource.reader(''));

    // Wait for initialization time
    await Future<void>.delayed(const Duration(milliseconds: 100));

    await Future<void>.delayed(const Duration(milliseconds: 100));
    final languageResult = await languageListener.stopAndGetResult();

    expect(languageResult, equals([null]));
  });

  test('change language multiple times', () async {
    final languageLocalSource =
        AppModuleImpl().appLanguageLocalSource(FakeStringSourceOfTruth());

    final languageListener = ResultListener(languageLocalSource.reader(''));

    // Wait for initialization time
    await Future<void>.delayed(const Duration(milliseconds: 100));

    await languageLocalSource.write('', LanguageEnum.Arabic);
    await languageLocalSource.write('', LanguageEnum.English);

    await Future<void>.delayed(const Duration(milliseconds: 100));
    final languageResult = await languageListener.stopAndGetResult();

    expect(languageResult,
        equals([null, LanguageEnum.Arabic, LanguageEnum.English]));
  });

  test('remove language', () async {
    final languageLocalSource =
        AppModuleImpl().appLanguageLocalSource(FakeStringSourceOfTruth());

    final languageListener = ResultListener(languageLocalSource.reader(''));

    // Wait for initialization time
    await Future<void>.delayed(const Duration(milliseconds: 100));

    await languageLocalSource.write('', LanguageEnum.Arabic);
    await languageLocalSource.write('', null);

    await Future<void>.delayed(const Duration(milliseconds: 100));
    final languageResult = await languageListener.stopAndGetResult();

    expect(languageResult, equals([null, LanguageEnum.Arabic, null]));
  });
}
