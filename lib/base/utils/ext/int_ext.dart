import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/formatters/app_formatter.dart';

extension IntNullableExt on num? {
  /// Returns a string representation of this integer as a decimal, or an empty string if this integer is null.
  String get asDecimal =>
      this == null ? '' : AppFormatter.numberAsDecimal(this!.toInt());

  /// Returns a human-readable string representation of this integer, or an empty string if this integer is null.
  String get asHumanReadable =>
      this == null ? '' : AppFormatter.numberAsHumanReadable(this!.toInt());

  String? get toDate => DateFormat("d/MM/y")
      .format(DateTime.fromMillisecondsSinceEpoch(this!.toInt()));
  String? get toTime => DateFormat("H:mm")
      .format(DateTime.fromMillisecondsSinceEpoch(this!.toInt()));
  SizedBox get height => SizedBox(height: (this ?? 0).h);
  SizedBox get width => SizedBox(width: (this ?? 0).w);
  SliverPadding get sliverHeight =>
      SliverPadding(padding: EdgeInsets.only(top: (this ?? 0).h));
  SliverPadding get sliverWidth =>
      SliverPadding(padding: EdgeInsets.only(left: (this ?? 0).w));
}
