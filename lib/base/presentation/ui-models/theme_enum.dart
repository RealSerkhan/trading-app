// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

/// An enumeration of themes.
enum ThemeEnum {
  /// The system's default theme.
  SystemDefault('system'),

  /// The light theme.
  Light('light'),

  /// The dark theme.
  Dark('dark'),
  ;

  const ThemeEnum(this.theme);

  /// The name of the theme.
  final String theme;

  /// Returns the theme as a [ThemeMode] object.
  ThemeMode get asThemeModel => ThemeMode.values.byName(theme);
}
