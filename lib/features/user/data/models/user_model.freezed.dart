// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(
      name: 'userType',
      defaultValue: UserType.Guest,
      toJson: UserType.toJson,
      fromJson: UserType.fromString)
  dynamic get userType => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  DateTime? get updatedDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(
                name: 'userType',
                defaultValue: UserType.Guest,
                toJson: UserType.toJson,
                fromJson: UserType.fromString)
            dynamic userType,
            int? id,
            String? name,
            String? userName,
            double? balance,
            bool isVerified,
            DateTime? dateOfBirth,
            DateTime? createdDate,
            DateTime? updatedDate)
        user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(
                name: 'userType',
                defaultValue: UserType.Guest,
                toJson: UserType.toJson,
                fromJson: UserType.fromString)
            dynamic userType,
            int? id,
            String? name,
            String? userName,
            double? balance,
            bool isVerified,
            DateTime? dateOfBirth,
            DateTime? createdDate,
            DateTime? updatedDate)?
        user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(
                name: 'userType',
                defaultValue: UserType.Guest,
                toJson: UserType.toJson,
                fromJson: UserType.fromString)
            dynamic userType,
            int? id,
            String? name,
            String? userName,
            double? balance,
            bool isVerified,
            DateTime? dateOfBirth,
            DateTime? createdDate,
            DateTime? updatedDate)?
        user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserModel value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserModel value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserModel value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'userType',
          defaultValue: UserType.Guest,
          toJson: UserType.toJson,
          fromJson: UserType.fromString)
      dynamic userType,
      int? id,
      String? name,
      String? userName,
      double? balance,
      bool isVerified,
      DateTime? dateOfBirth,
      DateTime? createdDate,
      DateTime? updatedDate});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? userName = freezed,
    Object? balance = freezed,
    Object? isVerified = null,
    Object? dateOfBirth = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
  }) {
    return _then(_value.copyWith(
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'userType',
          defaultValue: UserType.Guest,
          toJson: UserType.toJson,
          fromJson: UserType.fromString)
      dynamic userType,
      int? id,
      String? name,
      String? userName,
      double? balance,
      bool isVerified,
      DateTime? dateOfBirth,
      DateTime? createdDate,
      DateTime? updatedDate});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? userName = freezed,
    Object? balance = freezed,
    Object? isVerified = null,
    Object? dateOfBirth = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
  }) {
    return _then(_$UserModelImpl(
      userType: freezed == userType ? _value.userType! : userType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(
          name: 'userType',
          defaultValue: UserType.Guest,
          toJson: UserType.toJson,
          fromJson: UserType.fromString)
      this.userType,
      this.id,
      this.name,
      this.userName,
      this.balance,
      this.isVerified = false,
      this.dateOfBirth,
      this.createdDate,
      this.updatedDate});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(
      name: 'userType',
      defaultValue: UserType.Guest,
      toJson: UserType.toJson,
      fromJson: UserType.fromString)
  final dynamic userType;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? userName;
  @override
  final double? balance;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  final DateTime? dateOfBirth;
  @override
  final DateTime? createdDate;
  @override
  final DateTime? updatedDate;

  @override
  String toString() {
    return 'UserModel.user(userType: $userType, id: $id, name: $name, userName: $userName, balance: $balance, isVerified: $isVerified, dateOfBirth: $dateOfBirth, createdDate: $createdDate, updatedDate: $updatedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userType),
      id,
      name,
      userName,
      balance,
      isVerified,
      dateOfBirth,
      createdDate,
      updatedDate);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(
                name: 'userType',
                defaultValue: UserType.Guest,
                toJson: UserType.toJson,
                fromJson: UserType.fromString)
            dynamic userType,
            int? id,
            String? name,
            String? userName,
            double? balance,
            bool isVerified,
            DateTime? dateOfBirth,
            DateTime? createdDate,
            DateTime? updatedDate)
        user,
  }) {
    return user(userType, id, name, userName, balance, isVerified, dateOfBirth,
        createdDate, updatedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(
                name: 'userType',
                defaultValue: UserType.Guest,
                toJson: UserType.toJson,
                fromJson: UserType.fromString)
            dynamic userType,
            int? id,
            String? name,
            String? userName,
            double? balance,
            bool isVerified,
            DateTime? dateOfBirth,
            DateTime? createdDate,
            DateTime? updatedDate)?
        user,
  }) {
    return user?.call(userType, id, name, userName, balance, isVerified,
        dateOfBirth, createdDate, updatedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(
                name: 'userType',
                defaultValue: UserType.Guest,
                toJson: UserType.toJson,
                fromJson: UserType.fromString)
            dynamic userType,
            int? id,
            String? name,
            String? userName,
            double? balance,
            bool isVerified,
            DateTime? dateOfBirth,
            DateTime? createdDate,
            DateTime? updatedDate)?
        user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(userType, id, name, userName, balance, isVerified,
          dateOfBirth, createdDate, updatedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserModel value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserModel value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserModel value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(
          name: 'userType',
          defaultValue: UserType.Guest,
          toJson: UserType.toJson,
          fromJson: UserType.fromString)
      final dynamic userType,
      final int? id,
      final String? name,
      final String? userName,
      final double? balance,
      final bool isVerified,
      final DateTime? dateOfBirth,
      final DateTime? createdDate,
      final DateTime? updatedDate}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(
      name: 'userType',
      defaultValue: UserType.Guest,
      toJson: UserType.toJson,
      fromJson: UserType.fromString)
  dynamic get userType;
  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get userName;
  @override
  double? get balance;
  @override
  bool get isVerified;
  @override
  DateTime? get dateOfBirth;
  @override
  DateTime? get createdDate;
  @override
  DateTime? get updatedDate;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
