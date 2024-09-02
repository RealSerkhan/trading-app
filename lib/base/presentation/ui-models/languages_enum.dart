// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

/// An enumeration of language codes and their corresponding properties.
enum LanguageEnum {
  /// The system's default language.
  SystemDefault(null),

  /// English language.
  English('en'),

  /// Arabic language.
  Arabic('ar', isRtl: true),
  ;

  const LanguageEnum(
    this.code, {
    this.isRtl = false,
  });

  // The language code.
  final String? code;

  /// A flag indicating whether the language is written from right to left.
  final bool isRtl;

  /// Returns the language as a [Locale] object.
  Locale? get asLocale => code == null ? null : Locale(code!);

  /// Returns the language as a [Locale] object.
  static String get systemLanguage => Platform.localeName.split('_').first;

  // Returns the language code. If the language code is not set, returns the system's default language.
  String get calculatedCode => code ?? LanguageEnum.systemLanguage;

  /// Returns the text theme for the language.
  // TextTheme fontTheme(TextTheme textTheme) {
  //   switch (calculatedCode) {
  //     case 'ar':
  //       return GoogleFonts.cairoTextTheme(textTheme);
  //     default:
  //       return GoogleFonts.robotoTextTheme(textTheme);
  //   }
  // }
}
