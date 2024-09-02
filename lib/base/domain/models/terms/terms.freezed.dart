// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Terms _$TermsFromJson(Map<String, dynamic> json) {
  return _Terms.fromJson(json);
}

/// @nodoc
mixin _$Terms {
  String? get terms_ar => throw _privateConstructorUsedError;
  String? get terms_en => throw _privateConstructorUsedError;

  /// Serializes this Terms to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermsCopyWith<Terms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsCopyWith<$Res> {
  factory $TermsCopyWith(Terms value, $Res Function(Terms) then) =
      _$TermsCopyWithImpl<$Res, Terms>;
  @useResult
  $Res call({String? terms_ar, String? terms_en});
}

/// @nodoc
class _$TermsCopyWithImpl<$Res, $Val extends Terms>
    implements $TermsCopyWith<$Res> {
  _$TermsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms_ar = freezed,
    Object? terms_en = freezed,
  }) {
    return _then(_value.copyWith(
      terms_ar: freezed == terms_ar
          ? _value.terms_ar
          : terms_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      terms_en: freezed == terms_en
          ? _value.terms_en
          : terms_en // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermsImplCopyWith<$Res> implements $TermsCopyWith<$Res> {
  factory _$$TermsImplCopyWith(
          _$TermsImpl value, $Res Function(_$TermsImpl) then) =
      __$$TermsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? terms_ar, String? terms_en});
}

/// @nodoc
class __$$TermsImplCopyWithImpl<$Res>
    extends _$TermsCopyWithImpl<$Res, _$TermsImpl>
    implements _$$TermsImplCopyWith<$Res> {
  __$$TermsImplCopyWithImpl(
      _$TermsImpl _value, $Res Function(_$TermsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms_ar = freezed,
    Object? terms_en = freezed,
  }) {
    return _then(_$TermsImpl(
      terms_ar: freezed == terms_ar
          ? _value.terms_ar
          : terms_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      terms_en: freezed == terms_en
          ? _value.terms_en
          : terms_en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsImpl implements _Terms {
  _$TermsImpl({this.terms_ar, this.terms_en});

  factory _$TermsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsImplFromJson(json);

  @override
  final String? terms_ar;
  @override
  final String? terms_en;

  @override
  String toString() {
    return 'Terms(terms_ar: $terms_ar, terms_en: $terms_en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsImpl &&
            (identical(other.terms_ar, terms_ar) ||
                other.terms_ar == terms_ar) &&
            (identical(other.terms_en, terms_en) ||
                other.terms_en == terms_en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, terms_ar, terms_en);

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsImplCopyWith<_$TermsImpl> get copyWith =>
      __$$TermsImplCopyWithImpl<_$TermsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsImplToJson(
      this,
    );
  }
}

abstract class _Terms implements Terms {
  factory _Terms({final String? terms_ar, final String? terms_en}) =
      _$TermsImpl;

  factory _Terms.fromJson(Map<String, dynamic> json) = _$TermsImpl.fromJson;

  @override
  String? get terms_ar;
  @override
  String? get terms_en;

  /// Create a copy of Terms
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermsImplCopyWith<_$TermsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
