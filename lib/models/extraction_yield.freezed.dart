// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extraction_yield.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExtractionYield _$ExtractionYieldFromJson(Map<String, dynamic> json) {
  return _ExtractionYield.fromJson(json);
}

/// @nodoc
mixin _$ExtractionYield {
  String get symbol => throw _privateConstructorUsedError;
  int get units => throw _privateConstructorUsedError;

  /// Serializes this ExtractionYield to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractionYield
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractionYieldCopyWith<ExtractionYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractionYieldCopyWith<$Res> {
  factory $ExtractionYieldCopyWith(
          ExtractionYield value, $Res Function(ExtractionYield) then) =
      _$ExtractionYieldCopyWithImpl<$Res, ExtractionYield>;
  @useResult
  $Res call({String symbol, int units});
}

/// @nodoc
class _$ExtractionYieldCopyWithImpl<$Res, $Val extends ExtractionYield>
    implements $ExtractionYieldCopyWith<$Res> {
  _$ExtractionYieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractionYield
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
abstract class _$$ExtractionYieldImplCopyWith<$Res>
    implements $ExtractionYieldCopyWith<$Res> {
  factory _$$ExtractionYieldImplCopyWith(_$ExtractionYieldImpl value,
          $Res Function(_$ExtractionYieldImpl) then) =
      __$$ExtractionYieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, int units});
}

/// @nodoc
class __$$ExtractionYieldImplCopyWithImpl<$Res>
    extends _$ExtractionYieldCopyWithImpl<$Res, _$ExtractionYieldImpl>
    implements _$$ExtractionYieldImplCopyWith<$Res> {
  __$$ExtractionYieldImplCopyWithImpl(
      _$ExtractionYieldImpl _value, $Res Function(_$ExtractionYieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtractionYield
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? units = null,
  }) {
    return _then(_$ExtractionYieldImpl(
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
class _$ExtractionYieldImpl implements _ExtractionYield {
  const _$ExtractionYieldImpl({this.symbol = '', this.units = 0});

  factory _$ExtractionYieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractionYieldImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final int units;

  @override
  String toString() {
    return 'ExtractionYield(symbol: $symbol, units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractionYieldImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.units, units) || other.units == units));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, units);

  /// Create a copy of ExtractionYield
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractionYieldImplCopyWith<_$ExtractionYieldImpl> get copyWith =>
      __$$ExtractionYieldImplCopyWithImpl<_$ExtractionYieldImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractionYieldImplToJson(
      this,
    );
  }
}

abstract class _ExtractionYield implements ExtractionYield {
  const factory _ExtractionYield({final String symbol, final int units}) =
      _$ExtractionYieldImpl;

  factory _ExtractionYield.fromJson(Map<String, dynamic> json) =
      _$ExtractionYieldImpl.fromJson;

  @override
  String get symbol;
  @override
  int get units;

  /// Create a copy of ExtractionYield
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractionYieldImplCopyWith<_$ExtractionYieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
