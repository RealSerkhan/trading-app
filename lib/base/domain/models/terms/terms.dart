// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms.freezed.dart';
part 'terms.g.dart';

@freezed
class Terms with _$Terms {
  factory Terms({String? terms_ar, String? terms_en}) = _Terms;

  factory Terms.fromJson(Map<String, dynamic> json) => _$TermsFromJson(json);
}
