// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waypoint_orbital.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaypointOrbital _$WaypointOrbitalFromJson(Map<String, dynamic> json) {
  return _WaypointOrbital.fromJson(json);
}

/// @nodoc
mixin _$WaypointOrbital {
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this WaypointOrbital to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaypointOrbital
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaypointOrbitalCopyWith<WaypointOrbital> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaypointOrbitalCopyWith<$Res> {
  factory $WaypointOrbitalCopyWith(
          WaypointOrbital value, $Res Function(WaypointOrbital) then) =
      _$WaypointOrbitalCopyWithImpl<$Res, WaypointOrbital>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class _$WaypointOrbitalCopyWithImpl<$Res, $Val extends WaypointOrbital>
    implements $WaypointOrbitalCopyWith<$Res> {
  _$WaypointOrbitalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaypointOrbital
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaypointOrbitalImplCopyWith<$Res>
    implements $WaypointOrbitalCopyWith<$Res> {
  factory _$$WaypointOrbitalImplCopyWith(_$WaypointOrbitalImpl value,
          $Res Function(_$WaypointOrbitalImpl) then) =
      __$$WaypointOrbitalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$WaypointOrbitalImplCopyWithImpl<$Res>
    extends _$WaypointOrbitalCopyWithImpl<$Res, _$WaypointOrbitalImpl>
    implements _$$WaypointOrbitalImplCopyWith<$Res> {
  __$$WaypointOrbitalImplCopyWithImpl(
      _$WaypointOrbitalImpl _value, $Res Function(_$WaypointOrbitalImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaypointOrbital
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$WaypointOrbitalImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaypointOrbitalImpl implements _WaypointOrbital {
  const _$WaypointOrbitalImpl({this.symbol = ''});

  factory _$WaypointOrbitalImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaypointOrbitalImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;

  @override
  String toString() {
    return 'WaypointOrbital(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaypointOrbitalImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  /// Create a copy of WaypointOrbital
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaypointOrbitalImplCopyWith<_$WaypointOrbitalImpl> get copyWith =>
      __$$WaypointOrbitalImplCopyWithImpl<_$WaypointOrbitalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaypointOrbitalImplToJson(
      this,
    );
  }
}

abstract class _WaypointOrbital implements WaypointOrbital {
  const factory _WaypointOrbital({final String symbol}) = _$WaypointOrbitalImpl;

  factory _WaypointOrbital.fromJson(Map<String, dynamic> json) =
      _$WaypointOrbitalImpl.fromJson;

  @override
  String get symbol;

  /// Create a copy of WaypointOrbital
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaypointOrbitalImplCopyWith<_$WaypointOrbitalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
