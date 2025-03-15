// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trading_instrument_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradingInstrumentModel _$TradingInstrumentModelFromJson(
    Map<String, dynamic> json) {
  return _TradingInstrumentModel.fromJson(json);
}

/// @nodoc
mixin _$TradingInstrumentModel {
  String get description => throw _privateConstructorUsedError;
  String get displaySymbol => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this TradingInstrumentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradingInstrumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradingInstrumentModelCopyWith<TradingInstrumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingInstrumentModelCopyWith<$Res> {
  factory $TradingInstrumentModelCopyWith(TradingInstrumentModel value,
          $Res Function(TradingInstrumentModel) then) =
      _$TradingInstrumentModelCopyWithImpl<$Res, TradingInstrumentModel>;
  @useResult
  $Res call({String description, String displaySymbol, String symbol});
}

/// @nodoc
class _$TradingInstrumentModelCopyWithImpl<$Res,
        $Val extends TradingInstrumentModel>
    implements $TradingInstrumentModelCopyWith<$Res> {
  _$TradingInstrumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradingInstrumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? displaySymbol = null,
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displaySymbol: null == displaySymbol
          ? _value.displaySymbol
          : displaySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradingInstrumentModelImplCopyWith<$Res>
    implements $TradingInstrumentModelCopyWith<$Res> {
  factory _$$TradingInstrumentModelImplCopyWith(
          _$TradingInstrumentModelImpl value,
          $Res Function(_$TradingInstrumentModelImpl) then) =
      __$$TradingInstrumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String displaySymbol, String symbol});
}

/// @nodoc
class __$$TradingInstrumentModelImplCopyWithImpl<$Res>
    extends _$TradingInstrumentModelCopyWithImpl<$Res,
        _$TradingInstrumentModelImpl>
    implements _$$TradingInstrumentModelImplCopyWith<$Res> {
  __$$TradingInstrumentModelImplCopyWithImpl(
      _$TradingInstrumentModelImpl _value,
      $Res Function(_$TradingInstrumentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradingInstrumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? displaySymbol = null,
    Object? symbol = null,
  }) {
    return _then(_$TradingInstrumentModelImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displaySymbol: null == displaySymbol
          ? _value.displaySymbol
          : displaySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradingInstrumentModelImpl implements _TradingInstrumentModel {
  const _$TradingInstrumentModelImpl(
      {required this.description,
      required this.displaySymbol,
      required this.symbol});

  factory _$TradingInstrumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradingInstrumentModelImplFromJson(json);

  @override
  final String description;
  @override
  final String displaySymbol;
  @override
  final String symbol;

  @override
  String toString() {
    return 'TradingInstrumentModel(description: $description, displaySymbol: $displaySymbol, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradingInstrumentModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.displaySymbol, displaySymbol) ||
                other.displaySymbol == displaySymbol) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, displaySymbol, symbol);

  /// Create a copy of TradingInstrumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradingInstrumentModelImplCopyWith<_$TradingInstrumentModelImpl>
      get copyWith => __$$TradingInstrumentModelImplCopyWithImpl<
          _$TradingInstrumentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradingInstrumentModelImplToJson(
      this,
    );
  }
}

abstract class _TradingInstrumentModel implements TradingInstrumentModel {
  const factory _TradingInstrumentModel(
      {required final String description,
      required final String displaySymbol,
      required final String symbol}) = _$TradingInstrumentModelImpl;

  factory _TradingInstrumentModel.fromJson(Map<String, dynamic> json) =
      _$TradingInstrumentModelImpl.fromJson;

  @override
  String get description;
  @override
  String get displaySymbol;
  @override
  String get symbol;

  /// Create a copy of TradingInstrumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradingInstrumentModelImplCopyWith<_$TradingInstrumentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
