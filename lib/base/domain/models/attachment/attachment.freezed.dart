// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
mixin _$Attachment {
  @JsonKey(fromJson: AttachmentType.fromJson, toJson: AttachmentType.toJson)
  AttachmentType? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String? get localPath => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: FileSource.fromJson,
      toJson: FileSource.toJson,
      defaultValue: FileSource.remote)
  FileSource? get source => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnailUrl")
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this Attachment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res, Attachment>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: AttachmentType.fromJson, toJson: AttachmentType.toJson)
      AttachmentType? type,
      String? url,
      @JsonKey(includeToJson: false) String? localPath,
      @JsonKey(
          fromJson: FileSource.fromJson,
          toJson: FileSource.toJson,
          defaultValue: FileSource.remote)
      FileSource? source,
      @JsonKey(name: "thumbnailUrl") String? thumbnailUrl});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res, $Val extends Attachment>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? url = freezed,
    Object? localPath = freezed,
    Object? source = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttachmentType?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: freezed == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as FileSource?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentImplCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$AttachmentImplCopyWith(
          _$AttachmentImpl value, $Res Function(_$AttachmentImpl) then) =
      __$$AttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: AttachmentType.fromJson, toJson: AttachmentType.toJson)
      AttachmentType? type,
      String? url,
      @JsonKey(includeToJson: false) String? localPath,
      @JsonKey(
          fromJson: FileSource.fromJson,
          toJson: FileSource.toJson,
          defaultValue: FileSource.remote)
      FileSource? source,
      @JsonKey(name: "thumbnailUrl") String? thumbnailUrl});
}

/// @nodoc
class __$$AttachmentImplCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$AttachmentImpl>
    implements _$$AttachmentImplCopyWith<$Res> {
  __$$AttachmentImplCopyWithImpl(
      _$AttachmentImpl _value, $Res Function(_$AttachmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? url = freezed,
    Object? localPath = freezed,
    Object? source = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_$AttachmentImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttachmentType?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: freezed == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as FileSource?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AttachmentImpl implements _Attachment {
  _$AttachmentImpl(
      {@JsonKey(
          fromJson: AttachmentType.fromJson, toJson: AttachmentType.toJson)
      this.type,
      this.url,
      @JsonKey(includeToJson: false) this.localPath,
      @JsonKey(
          fromJson: FileSource.fromJson,
          toJson: FileSource.toJson,
          defaultValue: FileSource.remote)
      this.source,
      @JsonKey(name: "thumbnailUrl") this.thumbnailUrl});

  factory _$AttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentImplFromJson(json);

  @override
  @JsonKey(fromJson: AttachmentType.fromJson, toJson: AttachmentType.toJson)
  final AttachmentType? type;
  @override
  final String? url;
  @override
  @JsonKey(includeToJson: false)
  final String? localPath;
  @override
  @JsonKey(
      fromJson: FileSource.fromJson,
      toJson: FileSource.toJson,
      defaultValue: FileSource.remote)
  final FileSource? source;
  @override
  @JsonKey(name: "thumbnailUrl")
  final String? thumbnailUrl;

  @override
  String toString() {
    return 'Attachment(type: $type, url: $url, localPath: $localPath, source: $source, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, url, localPath, source, thumbnailUrl);

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      __$$AttachmentImplCopyWithImpl<_$AttachmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentImplToJson(
      this,
    );
  }
}

abstract class _Attachment implements Attachment {
  factory _Attachment(
          {@JsonKey(
              fromJson: AttachmentType.fromJson, toJson: AttachmentType.toJson)
          final AttachmentType? type,
          final String? url,
          @JsonKey(includeToJson: false) final String? localPath,
          @JsonKey(
              fromJson: FileSource.fromJson,
              toJson: FileSource.toJson,
              defaultValue: FileSource.remote)
          final FileSource? source,
          @JsonKey(name: "thumbnailUrl") final String? thumbnailUrl}) =
      _$AttachmentImpl;

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$AttachmentImpl.fromJson;

  @override
  @JsonKey(fromJson: AttachmentType.fromJson, toJson: AttachmentType.toJson)
  AttachmentType? get type;
  @override
  String? get url;
  @override
  @JsonKey(includeToJson: false)
  String? get localPath;
  @override
  @JsonKey(
      fromJson: FileSource.fromJson,
      toJson: FileSource.toJson,
      defaultValue: FileSource.remote)
  FileSource? get source;
  @override
  @JsonKey(name: "thumbnailUrl")
  String? get thumbnailUrl;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
