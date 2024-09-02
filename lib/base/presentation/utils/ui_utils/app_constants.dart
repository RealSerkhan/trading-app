import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';
import 'package:flutter/material.dart';

/// Abstract class containing constants used throughout the app.
abstract class AppConstants {
  const AppConstants._();

  /// The [Size] of the device in the design draft, in dp.
  ///
  // TODO(SETUP): change this values to design(figma, XD) sheet size.
  static const Size designSize = Size(375, 812);

  /// The number of items to display per page in paginated lists.
  static const int paginationPageSize = 25;

  static const LanguageEnum defaultLanguage = LanguageEnum.English;
}
