// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waypoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Waypoint _$WaypointFromJson(Map<String, dynamic> json) {
  return _Waypoint.fromJson(json);
}

/// @nodoc
mixin _$Waypoint {
  String get symbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get systemSymbol => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  List<String> get orbitals => throw _privateConstructorUsedError;
  Faction? get faction => throw _privateConstructorUsedError;
  List<WaypointTrait> get traits => throw _privateConstructorUsedError;
  Chart? get chart => throw _privateConstructorUsedError;

  /// Serializes this Waypoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaypointCopyWith<Waypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaypointCopyWith<$Res> {
  factory $WaypointCopyWith(Waypoint value, $Res Function(Waypoint) then) =
      _$WaypointCopyWithImpl<$Res, Waypoint>;
  @useResult
  $Res call(
      {String symbol,
      String type,
      String systemSymbol,
      int x,
      int y,
      List<String> orbitals,
      Faction? faction,
      List<WaypointTrait> traits,
      Chart? chart});

  $FactionCopyWith<$Res>? get faction;
  $ChartCopyWith<$Res>? get chart;
}

/// @nodoc
class _$WaypointCopyWithImpl<$Res, $Val extends Waypoint>
    implements $WaypointCopyWith<$Res> {
  _$WaypointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? type = null,
    Object? systemSymbol = null,
    Object? x = null,
    Object? y = null,
    Object? orbitals = null,
    Object? faction = freezed,
    Object? traits = null,
    Object? chart = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      systemSymbol: null == systemSymbol
          ? _value.systemSymbol
          : systemSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      orbitals: null == orbitals
          ? _value.orbitals
          : orbitals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      faction: freezed == faction
          ? _value.faction
          : faction // ignore: cast_nullable_to_non_nullable
              as Faction?,
      traits: null == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<WaypointTrait>,
      chart: freezed == chart
          ? _value.chart
          : chart // ignore: cast_nullable_to_non_nullable
              as Chart?,
    ) as $Val);
  }

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FactionCopyWith<$Res>? get faction {
    if (_value.faction == null) {
      return null;
    }

    return $FactionCopyWith<$Res>(_value.faction!, (value) {
      return _then(_value.copyWith(faction: value) as $Val);
    });
  }

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartCopyWith<$Res>? get chart {
    if (_value.chart == null) {
      return null;
    }

    return $ChartCopyWith<$Res>(_value.chart!, (value) {
      return _then(_value.copyWith(chart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WaypointImplCopyWith<$Res>
    implements $WaypointCopyWith<$Res> {
  factory _$$WaypointImplCopyWith(
          _$WaypointImpl value, $Res Function(_$WaypointImpl) then) =
      __$$WaypointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String type,
      String systemSymbol,
      int x,
      int y,
      List<String> orbitals,
      Faction? faction,
      List<WaypointTrait> traits,
      Chart? chart});

  @override
  $FactionCopyWith<$Res>? get faction;
  @override
  $ChartCopyWith<$Res>? get chart;
}

/// @nodoc
class __$$WaypointImplCopyWithImpl<$Res>
    extends _$WaypointCopyWithImpl<$Res, _$WaypointImpl>
    implements _$$WaypointImplCopyWith<$Res> {
  __$$WaypointImplCopyWithImpl(
      _$WaypointImpl _value, $Res Function(_$WaypointImpl) _then)
      : super(_value, _then);

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? type = null,
    Object? systemSymbol = null,
    Object? x = null,
    Object? y = null,
    Object? orbitals = null,
    Object? faction = freezed,
    Object? traits = null,
    Object? chart = freezed,
  }) {
    return _then(_$WaypointImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      systemSymbol: null == systemSymbol
          ? _value.systemSymbol
          : systemSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      orbitals: null == orbitals
          ? _value._orbitals
          : orbitals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      faction: freezed == faction
          ? _value.faction
          : faction // ignore: cast_nullable_to_non_nullable
              as Faction?,
      traits: null == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<WaypointTrait>,
      chart: freezed == chart
          ? _value.chart
          : chart // ignore: cast_nullable_to_non_nullable
              as Chart?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaypointImpl implements _Waypoint {
  const _$WaypointImpl(
      {required this.symbol,
      required this.type,
      required this.systemSymbol,
      required this.x,
      required this.y,
      final List<String> orbitals = const [],
      this.faction,
      final List<WaypointTrait> traits = const [],
      this.chart})
      : _orbitals = orbitals,
        _traits = traits;

  factory _$WaypointImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaypointImplFromJson(json);

  @override
  final String symbol;
  @override
  final String type;
  @override
  final String systemSymbol;
  @override
  final int x;
  @override
  final int y;
  final List<String> _orbitals;
  @override
  @JsonKey()
  List<String> get orbitals {
    if (_orbitals is EqualUnmodifiableListView) return _orbitals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orbitals);
  }

  @override
  final Faction? faction;
  final List<WaypointTrait> _traits;
  @override
  @JsonKey()
  List<WaypointTrait> get traits {
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_traits);
  }

  @override
  final Chart? chart;

  @override
  String toString() {
    return 'Waypoint(symbol: $symbol, type: $type, systemSymbol: $systemSymbol, x: $x, y: $y, orbitals: $orbitals, faction: $faction, traits: $traits, chart: $chart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaypointImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.systemSymbol, systemSymbol) ||
                other.systemSymbol == systemSymbol) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            const DeepCollectionEquality().equals(other._orbitals, _orbitals) &&
            (identical(other.faction, faction) || other.faction == faction) &&
            const DeepCollectionEquality().equals(other._traits, _traits) &&
            (identical(other.chart, chart) || other.chart == chart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      type,
      systemSymbol,
      x,
      y,
      const DeepCollectionEquality().hash(_orbitals),
      faction,
      const DeepCollectionEquality().hash(_traits),
      chart);

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaypointImplCopyWith<_$WaypointImpl> get copyWith =>
      __$$WaypointImplCopyWithImpl<_$WaypointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaypointImplToJson(
      this,
    );
  }
}

abstract class _Waypoint implements Waypoint {
  const factory _Waypoint(
      {required final String symbol,
      required final String type,
      required final String systemSymbol,
      required final int x,
      required final int y,
      final List<String> orbitals,
      final Faction? faction,
      final List<WaypointTrait> traits,
      final Chart? chart}) = _$WaypointImpl;

  factory _Waypoint.fromJson(Map<String, dynamic> json) =
      _$WaypointImpl.fromJson;

  @override
  String get symbol;
  @override
  String get type;
  @override
  String get systemSymbol;
  @override
  int get x;
  @override
  int get y;
  @override
  List<String> get orbitals;
  @override
  Faction? get faction;
  @override
  List<WaypointTrait> get traits;
  @override
  Chart? get chart;

  /// Create a copy of Waypoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaypointImplCopyWith<_$WaypointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
