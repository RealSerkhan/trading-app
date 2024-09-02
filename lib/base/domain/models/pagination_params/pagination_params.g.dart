// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationParamsImpl _$$PaginationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationParamsImpl(
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
      page: (json['page'] as num?)?.toInt() ?? 0,
      startKey: (json['startKey'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationParamsImplToJson(
        _$PaginationParamsImpl instance) =>
    <String, dynamic>{
      'pageSize': instance.pageSize,
      'page': instance.page,
      'startKey': instance.startKey,
    };
