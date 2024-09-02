// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsModelImpl _$$AppSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsModelImpl(
      maxTopUpPerMonthVerified:
          (json['maxTopUpPerMonthVerified'] as num).toDouble(),
      maxTopUpPerMonthUnverified:
          (json['maxTopUpPerMonthUnverified'] as num).toDouble(),
      maxTopUpPerBeneficiary:
          (json['maxTopUpPerBeneficiary'] as num).toDouble(),
      maxTotalTopUpPerMonth: (json['maxTotalTopUpPerMonth'] as num).toDouble(),
      topUpTransactionFee: (json['topUpTransactionFee'] as num).toDouble(),
      availableTopUpOptions: (json['availableTopUpOptions'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$AppSettingsModelImplToJson(
        _$AppSettingsModelImpl instance) =>
    <String, dynamic>{
      'maxTopUpPerMonthVerified': instance.maxTopUpPerMonthVerified,
      'maxTopUpPerMonthUnverified': instance.maxTopUpPerMonthUnverified,
      'maxTopUpPerBeneficiary': instance.maxTopUpPerBeneficiary,
      'maxTotalTopUpPerMonth': instance.maxTotalTopUpPerMonth,
      'topUpTransactionFee': instance.topUpTransactionFee,
      'availableTopUpOptions': instance.availableTopUpOptions,
    };
