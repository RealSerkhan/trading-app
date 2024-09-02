// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userType: json['userType'] == null
          ? UserType.Guest
          : UserType.fromString(json['userType']),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      userName: json['userName'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      isVerified: json['isVerified'] as bool? ?? false,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userType': UserType.toJson(instance.userType),
      'id': instance.id,
      'name': instance.name,
      'userName': instance.userName,
      'balance': instance.balance,
      'isVerified': instance.isVerified,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'createdDate': instance.createdDate?.toIso8601String(),
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };
