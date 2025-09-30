// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

System _$SystemFromJson(Map<String, dynamic> json) {
  return _System.fromJson(json);
}

/// @nodoc
mixin _$System {
  String get symbol => throw _privateConstructorUsedError;
  String get sectorSymbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  List<Waypoint> get waypoints => throw _privateConstructorUsedError;
  List<String> get factions => throw _privateConstructorUsedError;

  /// Serializes this System to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of System
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemCopyWith<System> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemCopyWith<$Res> {
  factory $SystemCopyWith(System value, $Res Function(System) then) =
      _$SystemCopyWithImpl<$Res, System>;
  @useResult
  $Res call(
      {String symbol,
      String sectorSymbol,
      String type,
      int x,
      int y,
      List<Waypoint> waypoints,
      List<String> factions});
}

/// @nodoc
class _$SystemCopyWithImpl<$Res, $Val extends System>
    implements $SystemCopyWith<$Res> {
  _$SystemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of System
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? sectorSymbol = null,
    Object? type = null,
    Object? x = null,
    Object? y = null,
    Object? waypoints = null,
    Object? factions = null,
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
      waypoints: null == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<Waypoint>,
      factions: null == factions
          ? _value.factions
          : factions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemImplCopyWith<$Res> implements $SystemCopyWith<$Res> {
  factory _$$SystemImplCopyWith(
          _$SystemImpl value, $Res Function(_$SystemImpl) then) =
      __$$SystemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String sectorSymbol,
      String type,
      int x,
      int y,
      List<Waypoint> waypoints,
      List<String> factions});
}

/// @nodoc
class __$$SystemImplCopyWithImpl<$Res>
    extends _$SystemCopyWithImpl<$Res, _$SystemImpl>
    implements _$$SystemImplCopyWith<$Res> {
  __$$SystemImplCopyWithImpl(
      _$SystemImpl _value, $Res Function(_$SystemImpl) _then)
      : super(_value, _then);

  /// Create a copy of System
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? sectorSymbol = null,
    Object? type = null,
    Object? x = null,
    Object? y = null,
    Object? waypoints = null,
    Object? factions = null,
  }) {
    return _then(_$SystemImpl(
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
      waypoints: null == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<Waypoint>,
      factions: null == factions
          ? _value._factions
          : factions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemImpl implements _System {
  const _$SystemImpl(
      {required this.symbol,
      required this.sectorSymbol,
      required this.type,
      required this.x,
      required this.y,
      final List<Waypoint> waypoints = const [],
      final List<String> factions = const []})
      : _waypoints = waypoints,
        _factions = factions;

  factory _$SystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemImplFromJson(json);

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
  final List<Waypoint> _waypoints;
  @override
  @JsonKey()
  List<Waypoint> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  final List<String> _factions;
  @override
  @JsonKey()
  List<String> get factions {
    if (_factions is EqualUnmodifiableListView) return _factions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_factions);
  }

  @override
  String toString() {
    return 'System(symbol: $symbol, sectorSymbol: $sectorSymbol, type: $type, x: $x, y: $y, waypoints: $waypoints, factions: $factions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.sectorSymbol, sectorSymbol) ||
                other.sectorSymbol == sectorSymbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            const DeepCollectionEquality().equals(other._factions, _factions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      sectorSymbol,
      type,
      x,
      y,
      const DeepCollectionEquality().hash(_waypoints),
      const DeepCollectionEquality().hash(_factions));

  /// Create a copy of System
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemImplCopyWith<_$SystemImpl> get copyWith =>
      __$$SystemImplCopyWithImpl<_$SystemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemImplToJson(
      this,
    );
  }
}

abstract class _System implements System {
  const factory _System(
      {required final String symbol,
      required final String sectorSymbol,
      required final String type,
      required final int x,
      required final int y,
      final List<Waypoint> waypoints,
      final List<String> factions}) = _$SystemImpl;

  factory _System.fromJson(Map<String, dynamic> json) = _$SystemImpl.fromJson;

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
  List<Waypoint> get waypoints;
  @override
  List<String> get factions;

  /// Create a copy of System
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemImplCopyWith<_$SystemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
