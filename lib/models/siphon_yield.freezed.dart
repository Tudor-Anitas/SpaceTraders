// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siphon_yield.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SiphonYield _$SiphonYieldFromJson(Map<String, dynamic> json) {
  return _SiphonYield.fromJson(json);
}

/// @nodoc
mixin _$SiphonYield {
  String get symbol => throw _privateConstructorUsedError;
  int get units => throw _privateConstructorUsedError;

  /// Serializes this SiphonYield to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiphonYield
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiphonYieldCopyWith<SiphonYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiphonYieldCopyWith<$Res> {
  factory $SiphonYieldCopyWith(
          SiphonYield value, $Res Function(SiphonYield) then) =
      _$SiphonYieldCopyWithImpl<$Res, SiphonYield>;
  @useResult
  $Res call({String symbol, int units});
}

/// @nodoc
class _$SiphonYieldCopyWithImpl<$Res, $Val extends SiphonYield>
    implements $SiphonYieldCopyWith<$Res> {
  _$SiphonYieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiphonYield
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? units = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiphonYieldImplCopyWith<$Res>
    implements $SiphonYieldCopyWith<$Res> {
  factory _$$SiphonYieldImplCopyWith(
          _$SiphonYieldImpl value, $Res Function(_$SiphonYieldImpl) then) =
      __$$SiphonYieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, int units});
}

/// @nodoc
class __$$SiphonYieldImplCopyWithImpl<$Res>
    extends _$SiphonYieldCopyWithImpl<$Res, _$SiphonYieldImpl>
    implements _$$SiphonYieldImplCopyWith<$Res> {
  __$$SiphonYieldImplCopyWithImpl(
      _$SiphonYieldImpl _value, $Res Function(_$SiphonYieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiphonYield
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? units = null,
  }) {
    return _then(_$SiphonYieldImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiphonYieldImpl implements _SiphonYield {
  const _$SiphonYieldImpl({this.symbol = '', this.units = 0});

  factory _$SiphonYieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiphonYieldImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final int units;

  @override
  String toString() {
    return 'SiphonYield(symbol: $symbol, units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiphonYieldImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.units, units) || other.units == units));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, units);

  /// Create a copy of SiphonYield
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiphonYieldImplCopyWith<_$SiphonYieldImpl> get copyWith =>
      __$$SiphonYieldImplCopyWithImpl<_$SiphonYieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiphonYieldImplToJson(
      this,
    );
  }
}

abstract class _SiphonYield implements SiphonYield {
  const factory _SiphonYield({final String symbol, final int units}) =
      _$SiphonYieldImpl;

  factory _SiphonYield.fromJson(Map<String, dynamic> json) =
      _$SiphonYieldImpl.fromJson;

  @override
  String get symbol;
  @override
  int get units;

  /// Create a copy of SiphonYield
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiphonYieldImplCopyWith<_$SiphonYieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
