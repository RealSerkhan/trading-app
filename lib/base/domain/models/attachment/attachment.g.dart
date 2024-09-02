// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentImpl _$$AttachmentImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentImpl(
      type: AttachmentType.fromJson(json['type'] as String?),
      url: json['url'] as String?,
      localPath: json['localPath'] as String?,
      source: json['source'] == null
          ? FileSource.remote
          : FileSource.fromJson(json['source'] as String?),
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$$AttachmentImplToJson(_$AttachmentImpl instance) =>
    <String, dynamic>{
      'type': AttachmentType.toJson(instance.type),
      'url': instance.url,
      'source': FileSource.toJson(instance.source),
      'thumbnailUrl': instance.thumbnailUrl,
    };
