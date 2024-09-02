// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsModel _$AppSettingsModelFromJson(Map<String, dynamic> json) {
  return _AppSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsModel {
  double get maxTopUpPerMonthVerified =>
      throw _privateConstructorUsedError; // Maximum top-up per month for verified users
  double get maxTopUpPerMonthUnverified =>
      throw _privateConstructorUsedError; // Maximum top-up per month for unverified users
  double get maxTopUpPerBeneficiary =>
      throw _privateConstructorUsedError; // Maximum top-up per beneficiary
  double get maxTotalTopUpPerMonth =>
      throw _privateConstructorUsedError; // Maximum total top-up per month across all beneficiaries
  double get topUpTransactionFee =>
      throw _privateConstructorUsedError; // Fee per top-up transaction
  List<double> get availableTopUpOptions => throw _privateConstructorUsedError;

  /// Serializes this AppSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsModelCopyWith<AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsModelCopyWith<$Res> {
  factory $AppSettingsModelCopyWith(
          AppSettingsModel value, $Res Function(AppSettingsModel) then) =
      _$AppSettingsModelCopyWithImpl<$Res, AppSettingsModel>;
  @useResult
  $Res call(
      {double maxTopUpPerMonthVerified,
      double maxTopUpPerMonthUnverified,
      double maxTopUpPerBeneficiary,
      double maxTotalTopUpPerMonth,
      double topUpTransactionFee,
      List<double> availableTopUpOptions});
}

/// @nodoc
class _$AppSettingsModelCopyWithImpl<$Res, $Val extends AppSettingsModel>
    implements $AppSettingsModelCopyWith<$Res> {
  _$AppSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTopUpPerMonthVerified = null,
    Object? maxTopUpPerMonthUnverified = null,
    Object? maxTopUpPerBeneficiary = null,
    Object? maxTotalTopUpPerMonth = null,
    Object? topUpTransactionFee = null,
    Object? availableTopUpOptions = null,
  }) {
    return _then(_value.copyWith(
      maxTopUpPerMonthVerified: null == maxTopUpPerMonthVerified
          ? _value.maxTopUpPerMonthVerified
          : maxTopUpPerMonthVerified // ignore: cast_nullable_to_non_nullable
              as double,
      maxTopUpPerMonthUnverified: null == maxTopUpPerMonthUnverified
          ? _value.maxTopUpPerMonthUnverified
          : maxTopUpPerMonthUnverified // ignore: cast_nullable_to_non_nullable
              as double,
      maxTopUpPerBeneficiary: null == maxTopUpPerBeneficiary
          ? _value.maxTopUpPerBeneficiary
          : maxTopUpPerBeneficiary // ignore: cast_nullable_to_non_nullable
              as double,
      maxTotalTopUpPerMonth: null == maxTotalTopUpPerMonth
          ? _value.maxTotalTopUpPerMonth
          : maxTotalTopUpPerMonth // ignore: cast_nullable_to_non_nullable
              as double,
      topUpTransactionFee: null == topUpTransactionFee
          ? _value.topUpTransactionFee
          : topUpTransactionFee // ignore: cast_nullable_to_non_nullable
              as double,
      availableTopUpOptions: null == availableTopUpOptions
          ? _value.availableTopUpOptions
          : availableTopUpOptions // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsModelImplCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$AppSettingsModelImplCopyWith(_$AppSettingsModelImpl value,
          $Res Function(_$AppSettingsModelImpl) then) =
      __$$AppSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double maxTopUpPerMonthVerified,
      double maxTopUpPerMonthUnverified,
      double maxTopUpPerBeneficiary,
      double maxTotalTopUpPerMonth,
      double topUpTransactionFee,
      List<double> availableTopUpOptions});
}

/// @nodoc
class __$$AppSettingsModelImplCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res, _$AppSettingsModelImpl>
    implements _$$AppSettingsModelImplCopyWith<$Res> {
  __$$AppSettingsModelImplCopyWithImpl(_$AppSettingsModelImpl _value,
      $Res Function(_$AppSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTopUpPerMonthVerified = null,
    Object? maxTopUpPerMonthUnverified = null,
    Object? maxTopUpPerBeneficiary = null,
    Object? maxTotalTopUpPerMonth = null,
    Object? topUpTransactionFee = null,
    Object? availableTopUpOptions = null,
  }) {
    return _then(_$AppSettingsModelImpl(
      maxTopUpPerMonthVerified: null == maxTopUpPerMonthVerified
          ? _value.maxTopUpPerMonthVerified
          : maxTopUpPerMonthVerified // ignore: cast_nullable_to_non_nullable
              as double,
      maxTopUpPerMonthUnverified: null == maxTopUpPerMonthUnverified
          ? _value.maxTopUpPerMonthUnverified
          : maxTopUpPerMonthUnverified // ignore: cast_nullable_to_non_nullable
              as double,
      maxTopUpPerBeneficiary: null == maxTopUpPerBeneficiary
          ? _value.maxTopUpPerBeneficiary
          : maxTopUpPerBeneficiary // ignore: cast_nullable_to_non_nullable
              as double,
      maxTotalTopUpPerMonth: null == maxTotalTopUpPerMonth
          ? _value.maxTotalTopUpPerMonth
          : maxTotalTopUpPerMonth // ignore: cast_nullable_to_non_nullable
              as double,
      topUpTransactionFee: null == topUpTransactionFee
          ? _value.topUpTransactionFee
          : topUpTransactionFee // ignore: cast_nullable_to_non_nullable
              as double,
      availableTopUpOptions: null == availableTopUpOptions
          ? _value._availableTopUpOptions
          : availableTopUpOptions // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsModelImpl extends _AppSettingsModel {
  _$AppSettingsModelImpl(
      {required this.maxTopUpPerMonthVerified,
      required this.maxTopUpPerMonthUnverified,
      required this.maxTopUpPerBeneficiary,
      required this.maxTotalTopUpPerMonth,
      required this.topUpTransactionFee,
      required final List<double> availableTopUpOptions})
      : _availableTopUpOptions = availableTopUpOptions,
        super._();

  factory _$AppSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsModelImplFromJson(json);

  @override
  final double maxTopUpPerMonthVerified;
// Maximum top-up per month for verified users
  @override
  final double maxTopUpPerMonthUnverified;
// Maximum top-up per month for unverified users
  @override
  final double maxTopUpPerBeneficiary;
// Maximum top-up per beneficiary
  @override
  final double maxTotalTopUpPerMonth;
// Maximum total top-up per month across all beneficiaries
  @override
  final double topUpTransactionFee;
// Fee per top-up transaction
  final List<double> _availableTopUpOptions;
// Fee per top-up transaction
  @override
  List<double> get availableTopUpOptions {
    if (_availableTopUpOptions is EqualUnmodifiableListView)
      return _availableTopUpOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableTopUpOptions);
  }

  @override
  String toString() {
    return 'AppSettingsModel(maxTopUpPerMonthVerified: $maxTopUpPerMonthVerified, maxTopUpPerMonthUnverified: $maxTopUpPerMonthUnverified, maxTopUpPerBeneficiary: $maxTopUpPerBeneficiary, maxTotalTopUpPerMonth: $maxTotalTopUpPerMonth, topUpTransactionFee: $topUpTransactionFee, availableTopUpOptions: $availableTopUpOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsModelImpl &&
            (identical(
                    other.maxTopUpPerMonthVerified, maxTopUpPerMonthVerified) ||
                other.maxTopUpPerMonthVerified == maxTopUpPerMonthVerified) &&
            (identical(other.maxTopUpPerMonthUnverified,
                    maxTopUpPerMonthUnverified) ||
                other.maxTopUpPerMonthUnverified ==
                    maxTopUpPerMonthUnverified) &&
            (identical(other.maxTopUpPerBeneficiary, maxTopUpPerBeneficiary) ||
                other.maxTopUpPerBeneficiary == maxTopUpPerBeneficiary) &&
            (identical(other.maxTotalTopUpPerMonth, maxTotalTopUpPerMonth) ||
                other.maxTotalTopUpPerMonth == maxTotalTopUpPerMonth) &&
            (identical(other.topUpTransactionFee, topUpTransactionFee) ||
                other.topUpTransactionFee == topUpTransactionFee) &&
            const DeepCollectionEquality()
                .equals(other._availableTopUpOptions, _availableTopUpOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxTopUpPerMonthVerified,
      maxTopUpPerMonthUnverified,
      maxTopUpPerBeneficiary,
      maxTotalTopUpPerMonth,
      topUpTransactionFee,
      const DeepCollectionEquality().hash(_availableTopUpOptions));

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      __$$AppSettingsModelImplCopyWithImpl<_$AppSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsModel extends AppSettingsModel {
  factory _AppSettingsModel(
          {required final double maxTopUpPerMonthVerified,
          required final double maxTopUpPerMonthUnverified,
          required final double maxTopUpPerBeneficiary,
          required final double maxTotalTopUpPerMonth,
          required final double topUpTransactionFee,
          required final List<double> availableTopUpOptions}) =
      _$AppSettingsModelImpl;
  _AppSettingsModel._() : super._();

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$AppSettingsModelImpl.fromJson;

  @override
  double
      get maxTopUpPerMonthVerified; // Maximum top-up per month for verified users
  @override
  double
      get maxTopUpPerMonthUnverified; // Maximum top-up per month for unverified users
  @override
  double get maxTopUpPerBeneficiary; // Maximum top-up per beneficiary
  @override
  double
      get maxTotalTopUpPerMonth; // Maximum total top-up per month across all beneficiaries
  @override
  double get topUpTransactionFee; // Fee per top-up transaction
  @override
  List<double> get availableTopUpOptions;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
