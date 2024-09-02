// ignore_for_file: invalid_annotation_target

import 'package:dart_kit/dart_kit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:version/version.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettingsModel with _$AppSettingsModel {
  factory AppSettingsModel({
    required double
        maxTopUpPerMonthVerified, // Maximum top-up per month for verified users
    required double
        maxTopUpPerMonthUnverified, // Maximum top-up per month for unverified users
    required double maxTopUpPerBeneficiary, // Maximum top-up per beneficiary
    required double
        maxTotalTopUpPerMonth, // Maximum total top-up per month across all beneficiaries
    required double topUpTransactionFee, // Fee per top-up transaction
    required List<double> availableTopUpOptions,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);
  const AppSettingsModel._();
}

Version? parseVersion(String? version) => version?.let((v) => Version.parse(v));
String? versionToString(Version? version) => version?.let((v) => v.toString());
