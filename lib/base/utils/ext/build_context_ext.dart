import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:beneficiary/base/presentation/utils/localizations_generated/l10n.dart';

extension BuildContextExt on BuildContext {
  //* THEME *//

  /// Returns the [ThemeData] of the current [BuildContext].
  AppThemeData get theme => AppTheme.of(this);

  /// Returns the [TextTheme] of the current [BuildContext].
  AppTypographyData get textTheme => theme.typography;

  /// Returns the [ColorScheme] of the current [BuildContext].
  AppColorsData get colors => theme.colors;

  //* TYPOGRAPHY *//

  /// Returns the [TextStyle] for display large text of the current [BuildContext].
  // TextStyle? get displayLarge => textTheme.displayLarge;

  // /// Returns the [TextStyle] for display medium text of the current [BuildContext].
  // TextStyle? get displayMedium => textTheme.displayMedium;

  // /// Returns the [TextStyle] for display small text of the current [BuildContext].
  // TextStyle? get displaySmall => textTheme.displaySmall;

  // /// Returns the [TextStyle] for headline large text of the current [BuildContext].
  // TextStyle? get headlineLarge => textTheme.headlineLarge;

  // /// Returns the [TextStyle] for headline medium text of the current [BuildContext].
  // TextStyle? get headlineMedium => textTheme.headlineMedium;

  // /// Returns the [TextStyle] for headline small text of the current [BuildContext].
  // TextStyle? get headlineSmall => textTheme.headlineSmall;

  // /// Returns the [TextStyle] for title large text of the current [BuildContext].
  // TextStyle? get titleLarge => textTheme.titleLarge;

  // /// Returns the [TextStyle] for title medium text of the current [BuildContext].
  // TextStyle? get titleMedium => textTheme.titleMedium;

  // /// Returns the [TextStyle] for title small text of the current [BuildContext].
  // TextStyle? get titleSmall => textTheme.titleSmall;

  // /// Returns the [TextStyle] for label large text of the current [BuildContext].
  // TextStyle? get labelLarge => textTheme.labelLarge;

  // /// Returns the [TextStyle] for label medium text of the current [BuildContext].
  // TextStyle? get labelMedium => textTheme.labelMedium;

  // /// Returns the [TextStyle] for label small text of the current [BuildContext].
  // TextStyle? get labelSmall => textTheme.labelSmall;

  // /// Returns the [TextStyle] for body large text of the current [BuildContext].
  // TextStyle? get bodyLarge => textTheme.bodyLarge;

  // /// Returns the [TextStyle] for body medium text of the current [BuildContext].
  // TextStyle? get bodyMedium => textTheme.bodyMedium;

  // /// Returns the [TextStyle] for body small text of the current [BuildContext].
  // TextStyle? get bodySmall => textTheme.bodySmall;

  // DIMENSION
  /// Accesses the dimensions defined in the app's theme.

  // LOCALIZATIONS
  /// Accesses the localization strings defined in the app's localization delegate.
  AppLocalizations get localizations => AppLocalizations.of(this);

  //* MEDIA QUERY*//

  /// Accesses the media query data for this build context.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// The insets of the display screen, excluding the areas obscured by system UI.
  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  /// The minimum padding that the system recommends for the content of the app.
  EdgeInsets get viewPadding => mediaQuery.viewPadding;

  /// The width of the display screen, in logical pixels.
  double get fullWidth => mediaQuery.size.width;

  /// The height of the display screen, in logical pixels.
  double get fullHeight => mediaQuery.size.height;
}
