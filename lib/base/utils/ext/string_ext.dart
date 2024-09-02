import 'package:dart_kit/dart_kit.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:beneficiary/base/presentation/utils/localizations_generated/l10n.dart';

extension StringExt on String {
  /// return highlighted [TextSpan] given search [query] over this string.
  List<TextSpan>? highlightOccurrences({
    required String? query,
    required TextStyle highlightStyle,
  }) {
    if (query == null ||
        query.isEmpty ||
        !toLowerCase().contains(query.toLowerCase())) {
      return [TextSpan(text: this)];
    }
    final matches = query.toLowerCase().allMatches(toLowerCase());

    int lastMatchEnd = 0;

    final List<TextSpan> children = [];
    for (var i = 0; i < matches.length; i++) {
      final match = matches.elementAt(i);

      if (match.start != lastMatchEnd) {
        children.add(TextSpan(
          text: substring(lastMatchEnd, match.start),
        ));
      }

      children.add(TextSpan(
        text: substring(match.start, match.end),
        style: highlightStyle,
      ));

      if (i == matches.length - 1 && match.end != length) {
        children.add(TextSpan(
          text: substring(match.end, length),
        ));
      }

      lastMatchEnd = match.end;
    }
    return children;
  }

  bool get isValidEmail {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  String get toValidPhone =>
      "+964$this".replaceAll('-', '').replaceFirst('0', '');

  String? required(BuildContext context, {int length = 50}) {
    if (isNullOrEmpty) {
      return AppLocalizations.of(context).required;
    }
    return null;
  }

  String get toImage =>
      replaceFirst(RegExp(r'data:image\/[a-zA-Z]+;base64,'), '');

  String? get translateDistrict {
    if (toLowerCase() == 'Provincial_Wasit'.toLowerCase()) {
      return 'واسط مكونات ';
    } else if (toLowerCase() == 'Provincial_Ninawa'.toLowerCase()) {
      return ' نينوى مكونات ';
    } else if (toLowerCase() == 'Federal'.toLowerCase()) {
      return 'فيدرالي ';
    } else {
      return null;
    }
  }

  String get getLocalized {
    return Intl.message(
      this,
      name: this,
      desc: '',
      args: [],
    );
  }
}
