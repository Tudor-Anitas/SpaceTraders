// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanned_ship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScannedShip _$ScannedShipFromJson(Map<String, dynamic> json) {
  return _ScannedShip.fromJson(json);
}

/// @nodoc
mixin _$ScannedShip {
  String get symbol => throw _privateConstructorUsedError;
  Registration get registration => throw _privateConstructorUsedError;
  ShipNav get nav => throw _privateConstructorUsedError;
  Frame get frame => throw _privateConstructorUsedError;
  Reactor get reactor => throw _privateConstructorUsedError;
  Engine get engine => throw _privateConstructorUsedError;
  List<Mount> get mounts => throw _privateConstructorUsedError;

  /// Serializes this ScannedShip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScannedShipCopyWith<ScannedShip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannedShipCopyWith<$Res> {
  factory $ScannedShipCopyWith(
          ScannedShip value, $Res Function(ScannedShip) then) =
      _$ScannedShipCopyWithImpl<$Res, ScannedShip>;
  @useResult
  $Res call(
      {String symbol,
      Registration registration,
      ShipNav nav,
      Frame frame,
      Reactor reactor,
      Engine engine,
      List<Mount> mounts});

  $RegistrationCopyWith<$Res> get registration;
  $ShipNavCopyWith<$Res> get nav;
  $FrameCopyWith<$Res> get frame;
  $ReactorCopyWith<$Res> get reactor;
  $EngineCopyWith<$Res> get engine;
}

/// @nodoc
class _$ScannedShipCopyWithImpl<$Res, $Val extends ScannedShip>
    implements $ScannedShipCopyWith<$Res> {
  _$ScannedShipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? registration = null,
    Object? nav = null,
    Object? frame = null,
    Object? reactor = null,
    Object? engine = null,
    Object? mounts = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as Registration,
      nav: null == nav
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as ShipNav,
      frame: null == frame
          ? _value.frame
          : frame // ignore: cast_nullable_to_non_nullable
              as Frame,
      reactor: null == reactor
          ? _value.reactor
          : reactor // ignore: cast_nullable_to_non_nullable
              as Reactor,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Engine,
      mounts: null == mounts
          ? _value.mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<Mount>,
    ) as $Val);
  }

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationCopyWith<$Res> get registration {
    return $RegistrationCopyWith<$Res>(_value.registration, (value) {
      return _then(_value.copyWith(registration: value) as $Val);
    });
  }

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipNavCopyWith<$Res> get nav {
    return $ShipNavCopyWith<$Res>(_value.nav, (value) {
      return _then(_value.copyWith(nav: value) as $Val);
    });
  }

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FrameCopyWith<$Res> get frame {
    return $FrameCopyWith<$Res>(_value.frame, (value) {
      return _then(_value.copyWith(frame: value) as $Val);
    });
  }

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReactorCopyWith<$Res> get reactor {
    return $ReactorCopyWith<$Res>(_value.reactor, (value) {
      return _then(_value.copyWith(reactor: value) as $Val);
    });
  }

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EngineCopyWith<$Res> get engine {
    return $EngineCopyWith<$Res>(_value.engine, (value) {
      return _then(_value.copyWith(engine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScannedShipImplCopyWith<$Res>
    implements $ScannedShipCopyWith<$Res> {
  factory _$$ScannedShipImplCopyWith(
          _$ScannedShipImpl value, $Res Function(_$ScannedShipImpl) then) =
      __$$ScannedShipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      Registration registration,
      ShipNav nav,
      Frame frame,
      Reactor reactor,
      Engine engine,
      List<Mount> mounts});

  @override
  $RegistrationCopyWith<$Res> get registration;
  @override
  $ShipNavCopyWith<$Res> get nav;
  @override
  $FrameCopyWith<$Res> get frame;
  @override
  $ReactorCopyWith<$Res> get reactor;
  @override
  $EngineCopyWith<$Res> get engine;
}

/// @nodoc
class __$$ScannedShipImplCopyWithImpl<$Res>
    extends _$ScannedShipCopyWithImpl<$Res, _$ScannedShipImpl>
    implements _$$ScannedShipImplCopyWith<$Res> {
  __$$ScannedShipImplCopyWithImpl(
      _$ScannedShipImpl _value, $Res Function(_$ScannedShipImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? registration = null,
    Object? nav = null,
    Object? frame = null,
    Object? reactor = null,
    Object? engine = null,
    Object? mounts = null,
  }) {
    return _then(_$ScannedShipImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as Registration,
      nav: null == nav
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as ShipNav,
      frame: null == frame
          ? _value.frame
          : frame // ignore: cast_nullable_to_non_nullable
              as Frame,
      reactor: null == reactor
          ? _value.reactor
          : reactor // ignore: cast_nullable_to_non_nullable
              as Reactor,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Engine,
      mounts: null == mounts
          ? _value._mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<Mount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScannedShipImpl implements _ScannedShip {
  const _$ScannedShipImpl(
      {required this.symbol,
      required this.registration,
      required this.nav,
      required this.frame,
      required this.reactor,
      required this.engine,
      final List<Mount> mounts = const []})
      : _mounts = mounts;

  factory _$ScannedShipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScannedShipImplFromJson(json);

  @override
  final String symbol;
  @override
  final Registration registration;
  @override
  final ShipNav nav;
  @override
  final Frame frame;
  @override
  final Reactor reactor;
  @override
  final Engine engine;
  final List<Mount> _mounts;
  @override
  @JsonKey()
  List<Mount> get mounts {
    if (_mounts is EqualUnmodifiableListView) return _mounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mounts);
  }

  @override
  String toString() {
    return 'ScannedShip(symbol: $symbol, registration: $registration, nav: $nav, frame: $frame, reactor: $reactor, engine: $engine, mounts: $mounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannedShipImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.registration, registration) ||
                other.registration == registration) &&
            (identical(other.nav, nav) || other.nav == nav) &&
            (identical(other.frame, frame) || other.frame == frame) &&
            (identical(other.reactor, reactor) || other.reactor == reactor) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            const DeepCollectionEquality().equals(other._mounts, _mounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, registration, nav, frame,
      reactor, engine, const DeepCollectionEquality().hash(_mounts));

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannedShipImplCopyWith<_$ScannedShipImpl> get copyWith =>
      __$$ScannedShipImplCopyWithImpl<_$ScannedShipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScannedShipImplToJson(
      this,
    );
  }
}

abstract class _ScannedShip implements ScannedShip {
  const factory _ScannedShip(
      {required final String symbol,
      required final Registration registration,
      required final ShipNav nav,
      required final Frame frame,
      required final Reactor reactor,
      required final Engine engine,
      final List<Mount> mounts}) = _$ScannedShipImpl;

  factory _ScannedShip.fromJson(Map<String, dynamic> json) =
      _$ScannedShipImpl.fromJson;

  @override
  String get symbol;
  @override
  Registration get registration;
  @override
  ShipNav get nav;
  @override
  Frame get frame;
  @override
  Reactor get reactor;
  @override
  Engine get engine;
  @override
  List<Mount> get mounts;

  /// Create a copy of ScannedShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScannedShipImplCopyWith<_$ScannedShipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
