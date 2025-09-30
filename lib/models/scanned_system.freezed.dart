// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanned_system.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScannedSystem _$ScannedSystemFromJson(Map<String, dynamic> json) {
  return _ScannedSystem.fromJson(json);
}

/// @nodoc
mixin _$ScannedSystem {
  String get symbol => throw _privateConstructorUsedError;
  String get sectorSymbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;

  /// Serializes this ScannedSystem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScannedSystem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScannedSystemCopyWith<ScannedSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannedSystemCopyWith<$Res> {
  factory $ScannedSystemCopyWith(
          ScannedSystem value, $Res Function(ScannedSystem) then) =
      _$ScannedSystemCopyWithImpl<$Res, ScannedSystem>;
  @useResult
  $Res call(
      {String symbol,
      String sectorSymbol,
      String type,
      int x,
      int y,
      int distance});
}

/// @nodoc
class _$ScannedSystemCopyWithImpl<$Res, $Val extends ScannedSystem>
    implements $ScannedSystemCopyWith<$Res> {
  _$ScannedSystemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScannedSystem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? sectorSymbol = null,
    Object? type = null,
    Object? x = null,
    Object? y = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      sectorSymbol: null == sectorSymbol
          ? _value.sectorSymbol
          : sectorSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScannedSystemImplCopyWith<$Res>
    implements $ScannedSystemCopyWith<$Res> {
  factory _$$ScannedSystemImplCopyWith(
          _$ScannedSystemImpl value, $Res Function(_$ScannedSystemImpl) then) =
      __$$ScannedSystemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String sectorSymbol,
      String type,
      int x,
      int y,
      int distance});
}

/// @nodoc
class __$$ScannedSystemImplCopyWithImpl<$Res>
    extends _$ScannedSystemCopyWithImpl<$Res, _$ScannedSystemImpl>
    implements _$$ScannedSystemImplCopyWith<$Res> {
  __$$ScannedSystemImplCopyWithImpl(
      _$ScannedSystemImpl _value, $Res Function(_$ScannedSystemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScannedSystem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? sectorSymbol = null,
    Object? type = null,
    Object? x = null,
    Object? y = null,
    Object? distance = null,
  }) {
    return _then(_$ScannedSystemImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      sectorSymbol: null == sectorSymbol
          ? _value.sectorSymbol
          : sectorSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScannedSystemImpl implements _ScannedSystem {
  const _$ScannedSystemImpl(
      {required this.symbol,
      required this.sectorSymbol,
      required this.type,
      required this.x,
      required this.y,
      this.distance = 0});

  factory _$ScannedSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScannedSystemImplFromJson(json);

  @override
  final String symbol;
  @override
  final String sectorSymbol;
  @override
  final String type;
  @override
  final int x;
  @override
  final int y;
  @override
  @JsonKey()
  final int distance;

  @override
  String toString() {
    return 'ScannedSystem(symbol: $symbol, sectorSymbol: $sectorSymbol, type: $type, x: $x, y: $y, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannedSystemImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.sectorSymbol, sectorSymbol) ||
                other.sectorSymbol == sectorSymbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, sectorSymbol, type, x, y, distance);

  /// Create a copy of ScannedSystem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannedSystemImplCopyWith<_$ScannedSystemImpl> get copyWith =>
      __$$ScannedSystemImplCopyWithImpl<_$ScannedSystemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScannedSystemImplToJson(
      this,
    );
  }
}

abstract class _ScannedSystem implements ScannedSystem {
  const factory _ScannedSystem(
      {required final String symbol,
      required final String sectorSymbol,
      required final String type,
      required final int x,
      required final int y,
      final int distance}) = _$ScannedSystemImpl;

  factory _ScannedSystem.fromJson(Map<String, dynamic> json) =
      _$ScannedSystemImpl.fromJson;

  @override
  String get symbol;
  @override
  String get sectorSymbol;
  @override
  String get type;
  @override
  int get x;
  @override
  int get y;
  @override
  int get distance;

  /// Create a copy of ScannedSystem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScannedSystemImplCopyWith<_$ScannedSystemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
