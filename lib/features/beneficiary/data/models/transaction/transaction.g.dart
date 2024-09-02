// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String,
      beneficiaryId: json['beneficiaryId'] as String,
      amount: (json['amount'] as num).toDouble(),
      transactionFee: (json['transactionFee'] as num).toDouble(),
      status: $enumDecode(_$TransactionStatusEnumMap, json['status']),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiaryId': instance.beneficiaryId,
      'amount': instance.amount,
      'transactionFee': instance.transactionFee,
      'status': _$TransactionStatusEnumMap[instance.status]!,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'date': instance.date.toIso8601String(),
    };

const _$TransactionStatusEnumMap = {
  TransactionStatus.pending: 'pending',
  TransactionStatus.completed: 'completed',
  TransactionStatus.failed: 'failed',
};

const _$TransactionTypeEnumMap = {
  TransactionType.topUp: 'topUp',
  TransactionType.other: 'other',
};
