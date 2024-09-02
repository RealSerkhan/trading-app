// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:beneficiary/base/domain/enums/attachment_type.dart';
import 'package:beneficiary/base/domain/enums/file_source.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

@freezed
class Attachment with _$Attachment {
  @JsonSerializable(explicitToJson: true)
  factory Attachment({
    @JsonKey(
      fromJson: AttachmentType.fromJson,
      toJson: AttachmentType.toJson,
    )
    AttachmentType? type,
    String? url,
    @JsonKey(includeToJson: false) String? localPath,
    @JsonKey(
      fromJson: FileSource.fromJson,
      toJson: FileSource.toJson,
      defaultValue: FileSource.remote,
    )
    FileSource? source,
    @JsonKey(name: "thumbnailUrl") String? thumbnailUrl,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}
