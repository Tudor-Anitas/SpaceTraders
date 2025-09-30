// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waypoint_faction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaypointFaction _$WaypointFactionFromJson(Map<String, dynamic> json) {
  return _WaypointFaction.fromJson(json);
}

/// @nodoc
mixin _$WaypointFaction {
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this WaypointFaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaypointFaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaypointFactionCopyWith<WaypointFaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaypointFactionCopyWith<$Res> {
  factory $WaypointFactionCopyWith(
          WaypointFaction value, $Res Function(WaypointFaction) then) =
      _$WaypointFactionCopyWithImpl<$Res, WaypointFaction>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class _$WaypointFactionCopyWithImpl<$Res, $Val extends WaypointFaction>
    implements $WaypointFactionCopyWith<$Res> {
  _$WaypointFactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaypointFaction
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
abstract class _$$WaypointFactionImplCopyWith<$Res>
    implements $WaypointFactionCopyWith<$Res> {
  factory _$$WaypointFactionImplCopyWith(_$WaypointFactionImpl value,
          $Res Function(_$WaypointFactionImpl) then) =
      __$$WaypointFactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$WaypointFactionImplCopyWithImpl<$Res>
    extends _$WaypointFactionCopyWithImpl<$Res, _$WaypointFactionImpl>
    implements _$$WaypointFactionImplCopyWith<$Res> {
  __$$WaypointFactionImplCopyWithImpl(
      _$WaypointFactionImpl _value, $Res Function(_$WaypointFactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaypointFaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$WaypointFactionImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaypointFactionImpl implements _WaypointFaction {
  const _$WaypointFactionImpl({this.symbol = ''});

  factory _$WaypointFactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaypointFactionImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;

  @override
  String toString() {
    return 'WaypointFaction(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaypointFactionImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  /// Create a copy of WaypointFaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaypointFactionImplCopyWith<_$WaypointFactionImpl> get copyWith =>
      __$$WaypointFactionImplCopyWithImpl<_$WaypointFactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaypointFactionImplToJson(
      this,
    );
  }
}

abstract class _WaypointFaction implements WaypointFaction {
  const factory _WaypointFaction({final String symbol}) = _$WaypointFactionImpl;

  factory _WaypointFaction.fromJson(Map<String, dynamic> json) =
      _$WaypointFactionImpl.fromJson;

  @override
  String get symbol;

  /// Create a copy of WaypointFaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaypointFactionImplCopyWith<_$WaypointFactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
