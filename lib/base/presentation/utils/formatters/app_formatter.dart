import 'package:intl/intl.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';
import 'package:timeago/timeago.dart' as timeago;

class AppFormatter {
  const AppFormatter._();

  static late LanguageEnum _lastLanguage;
  static late DateFormat _dateFormatter;
  static late NumberFormat _decimalFormatter;
  static late NumberFormat _humanFormatter;

  static String get _code => _lastLanguage.calculatedCode;
  static String get _shortCode => '${_code}_short';

  /// [DateTime] date type formatters
  ///
  /// format [DateTime] to [String] in YEAR_ABBR_MONTH_DAY format and localized based on [_lastLanguage].
  static String dateAsLocalized(DateTime date) => _dateFormatter.format(date);

  /// format [DateTime] to [String] in a future fuzzy way like `1 minutes from now`, based on [_lastLanguage].
  static String dateAsFuzzyFuture(DateTime date) =>
      timeago.format(date, allowFromNow: true, locale: _code);

  /// format [DateTime] to [String] in a future fuzzy way like `1m`, based on [_lastLanguage].
  static String dateAsFuzzyFutureShort(DateTime date) =>
      timeago.format(date, allowFromNow: true, locale: _shortCode);

  /// format [DateTime] to [String] in a past fuzzy way like `a moment ago`, based on [_lastLanguage].
  static String dateAsFuzzyPast(DateTime date) =>
      timeago.format(date, locale: _code);

  /// format [DateTime] to [String] in a short past fuzzy way like `1m`, based on [_lastLanguage].
  static String dateAsFuzzyPastShort(DateTime date) =>
      timeago.format(date, locale: _shortCode);

  /// [DateTime] date type formatters
  ///
  /// format [int] to [String] in human readable way like `2K`, based on [_lastLanguage].
  static String numberAsHumanReadable(int number) =>
      _humanFormatter.format(number);

  /// format [int] to [String] in decimal way like `2,000`, based on [_lastLanguage].
  static String numberAsDecimal(int number) => _decimalFormatter.format(number);

  /// called each time [appLanguage] changed so we can update the formatters with the new language.
  static void onLanguageChanged(LanguageEnum appLanguage) {
    _lastLanguage = appLanguage;

    _dateFormatter = DateFormat.yMMMd(_code).add_jm();
    _decimalFormatter = NumberFormat.decimalPattern(_code);
    _humanFormatter = NumberFormat.compact(locale: _code);

    // add arabic translations to `timeago` library.
    // note: no need to sync english cuz timeago have english  by default.
    if (_code == LanguageEnum.Arabic.code) {
      timeago.setLocaleMessages(
          appLanguage.calculatedCode, timeago.ArMessages());
      timeago.setLocaleMessages(
          '${appLanguage.calculatedCode}_short', timeago.ArShortMessages());
    }
  }
}
