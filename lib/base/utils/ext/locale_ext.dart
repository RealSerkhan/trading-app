import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';

extension DataStatusExtension on Locale {
  /// Returns a string representation of this integer as a decimal, or an empty string if this integer is null.
  LanguageEnum get getLang {
    if (languageCode == 'en') {
      return LanguageEnum.English;
    } else if (languageCode == 'ar') {
      return LanguageEnum.Arabic;
    }
    return LanguageEnum.Arabic;
  }
}
