import 'package:intl/intl.dart';
import 'package:beneficiary/base/presentation/utils/formatters/app_formatter.dart';

extension NullableDateTimeExt on DateTime? {
  /// Returns a localized string representation of this date, or an empty string if this date is null.
  String get localize =>
      this == null ? '' : AppFormatter.dateAsLocalized(this!);

  /// Returns a fuzzy string representation of this date as a future time, or an empty string if this date is null.
  String get asFuzzyFuture =>
      this == null ? '' : AppFormatter.dateAsFuzzyFuture(this!);

  /// Returns a short fuzzy string representation of this date as a future time, or an empty string if this date is null.
  String get asFuzzyFutureShort =>
      this == null ? '' : AppFormatter.dateAsFuzzyFutureShort(this!);

  /// Returns a fuzzy string representation of this date as a past time, or an empty string if this date is null.
  String get asFuzzyPast =>
      this == null ? '' : AppFormatter.dateAsFuzzyPast(this!);

  /// Returns a short fuzzy string representation of this date as a past time, or an empty string if this date is null.
  String get asFuzzyPastShort =>
      this == null ? '' : AppFormatter.dateAsFuzzyPastShort(this!);

  /// Returns a string representation of the number of days between this date and the current date,
  /// or an empty string if this date is null.
  String get asDays =>
      this == null ? '' : this!.difference(DateTime.now()).inDays.toString();

  String get todMy =>
      this == null ? '' : DateFormat('d-M-y HH:mm').format(this!);
}
