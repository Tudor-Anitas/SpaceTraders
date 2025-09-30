// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ship _$ShipFromJson(Map<String, dynamic> json) {
  return _Ship.fromJson(json);
}

/// @nodoc
mixin _$Ship {
  String get symbol => throw _privateConstructorUsedError;
  Registration get registration => throw _privateConstructorUsedError;
  ShipNav get nav => throw _privateConstructorUsedError;
  Crew get crew => throw _privateConstructorUsedError;
  Frame get frame => throw _privateConstructorUsedError;
  Reactor get reactor => throw _privateConstructorUsedError;
  Engine get engine => throw _privateConstructorUsedError;
  Cooldown get cooldown => throw _privateConstructorUsedError;
  List<Module> get modules => throw _privateConstructorUsedError;
  List<Mount> get mounts => throw _privateConstructorUsedError;
  ShipCargo get cargo => throw _privateConstructorUsedError;
  Fuel get fuel => throw _privateConstructorUsedError;

  /// Serializes this Ship to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipCopyWith<Ship> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipCopyWith<$Res> {
  factory $ShipCopyWith(Ship value, $Res Function(Ship) then) =
      _$ShipCopyWithImpl<$Res, Ship>;
  @useResult
  $Res call(
      {String symbol,
      Registration registration,
      ShipNav nav,
      Crew crew,
      Frame frame,
      Reactor reactor,
      Engine engine,
      Cooldown cooldown,
      List<Module> modules,
      List<Mount> mounts,
      ShipCargo cargo,
      Fuel fuel});

  $RegistrationCopyWith<$Res> get registration;
  $ShipNavCopyWith<$Res> get nav;
  $CrewCopyWith<$Res> get crew;
  $FrameCopyWith<$Res> get frame;
  $ReactorCopyWith<$Res> get reactor;
  $EngineCopyWith<$Res> get engine;
  $CooldownCopyWith<$Res> get cooldown;
  $ShipCargoCopyWith<$Res> get cargo;
  $FuelCopyWith<$Res> get fuel;
}

/// @nodoc
class _$ShipCopyWithImpl<$Res, $Val extends Ship>
    implements $ShipCopyWith<$Res> {
  _$ShipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? registration = null,
    Object? nav = null,
    Object? crew = null,
    Object? frame = null,
    Object? reactor = null,
    Object? engine = null,
    Object? cooldown = null,
    Object? modules = null,
    Object? mounts = null,
    Object? cargo = null,
    Object? fuel = null,
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
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as Crew,
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
      cooldown: null == cooldown
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as Cooldown,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
      mounts: null == mounts
          ? _value.mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<Mount>,
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as ShipCargo,
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as Fuel,
    ) as $Val);
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationCopyWith<$Res> get registration {
    return $RegistrationCopyWith<$Res>(_value.registration, (value) {
      return _then(_value.copyWith(registration: value) as $Val);
    });
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipNavCopyWith<$Res> get nav {
    return $ShipNavCopyWith<$Res>(_value.nav, (value) {
      return _then(_value.copyWith(nav: value) as $Val);
    });
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CrewCopyWith<$Res> get crew {
    return $CrewCopyWith<$Res>(_value.crew, (value) {
      return _then(_value.copyWith(crew: value) as $Val);
    });
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FrameCopyWith<$Res> get frame {
    return $FrameCopyWith<$Res>(_value.frame, (value) {
      return _then(_value.copyWith(frame: value) as $Val);
    });
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReactorCopyWith<$Res> get reactor {
    return $ReactorCopyWith<$Res>(_value.reactor, (value) {
      return _then(_value.copyWith(reactor: value) as $Val);
    });
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EngineCopyWith<$Res> get engine {
    return $EngineCopyWith<$Res>(_value.engine, (value) {
      return _then(_value.copyWith(engine: value) as $Val);
    });
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CooldownCopyWith<$Res> get cooldown {
    return $CooldownCopyWith<$Res>(_value.cooldown, (value) {
      return _then(_value.copyWith(cooldown: value) as $Val);
    });
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipCargoCopyWith<$Res> get cargo {
    return $ShipCargoCopyWith<$Res>(_value.cargo, (value) {
      return _then(_value.copyWith(cargo: value) as $Val);
    });
  }

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FuelCopyWith<$Res> get fuel {
    return $FuelCopyWith<$Res>(_value.fuel, (value) {
      return _then(_value.copyWith(fuel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipImplCopyWith<$Res> implements $ShipCopyWith<$Res> {
  factory _$$ShipImplCopyWith(
          _$ShipImpl value, $Res Function(_$ShipImpl) then) =
      __$$ShipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      Registration registration,
      ShipNav nav,
      Crew crew,
      Frame frame,
      Reactor reactor,
      Engine engine,
      Cooldown cooldown,
      List<Module> modules,
      List<Mount> mounts,
      ShipCargo cargo,
      Fuel fuel});

  @override
  $RegistrationCopyWith<$Res> get registration;
  @override
  $ShipNavCopyWith<$Res> get nav;
  @override
  $CrewCopyWith<$Res> get crew;
  @override
  $FrameCopyWith<$Res> get frame;
  @override
  $ReactorCopyWith<$Res> get reactor;
  @override
  $EngineCopyWith<$Res> get engine;
  @override
  $CooldownCopyWith<$Res> get cooldown;
  @override
  $ShipCargoCopyWith<$Res> get cargo;
  @override
  $FuelCopyWith<$Res> get fuel;
}

/// @nodoc
class __$$ShipImplCopyWithImpl<$Res>
    extends _$ShipCopyWithImpl<$Res, _$ShipImpl>
    implements _$$ShipImplCopyWith<$Res> {
  __$$ShipImplCopyWithImpl(_$ShipImpl _value, $Res Function(_$ShipImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? registration = null,
    Object? nav = null,
    Object? crew = null,
    Object? frame = null,
    Object? reactor = null,
    Object? engine = null,
    Object? cooldown = null,
    Object? modules = null,
    Object? mounts = null,
    Object? cargo = null,
    Object? fuel = null,
  }) {
    return _then(_$ShipImpl(
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
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as Crew,
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
      cooldown: null == cooldown
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as Cooldown,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
      mounts: null == mounts
          ? _value._mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<Mount>,
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as ShipCargo,
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as Fuel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipImpl implements _Ship {
  const _$ShipImpl(
      {this.symbol = '',
      this.registration = const Registration(),
      required this.nav,
      this.crew = const Crew(),
      this.frame = const Frame(),
      this.reactor = const Reactor(),
      this.engine = const Engine(),
      this.cooldown = const Cooldown(),
      final List<Module> modules = const [],
      final List<Mount> mounts = const [],
      this.cargo = const ShipCargo(),
      this.fuel = const Fuel()})
      : _modules = modules,
        _mounts = mounts;

  factory _$ShipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final Registration registration;
  @override
  final ShipNav nav;
  @override
  @JsonKey()
  final Crew crew;
  @override
  @JsonKey()
  final Frame frame;
  @override
  @JsonKey()
  final Reactor reactor;
  @override
  @JsonKey()
  final Engine engine;
  @override
  @JsonKey()
  final Cooldown cooldown;
  final List<Module> _modules;
  @override
  @JsonKey()
  List<Module> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  final List<Mount> _mounts;
  @override
  @JsonKey()
  List<Mount> get mounts {
    if (_mounts is EqualUnmodifiableListView) return _mounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mounts);
  }

  @override
  @JsonKey()
  final ShipCargo cargo;
  @override
  @JsonKey()
  final Fuel fuel;

  @override
  String toString() {
    return 'Ship(symbol: $symbol, registration: $registration, nav: $nav, crew: $crew, frame: $frame, reactor: $reactor, engine: $engine, cooldown: $cooldown, modules: $modules, mounts: $mounts, cargo: $cargo, fuel: $fuel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.registration, registration) ||
                other.registration == registration) &&
            (identical(other.nav, nav) || other.nav == nav) &&
            (identical(other.crew, crew) || other.crew == crew) &&
            (identical(other.frame, frame) || other.frame == frame) &&
            (identical(other.reactor, reactor) || other.reactor == reactor) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.cooldown, cooldown) ||
                other.cooldown == cooldown) &&
            const DeepCollectionEquality().equals(other._modules, _modules) &&
            const DeepCollectionEquality().equals(other._mounts, _mounts) &&
            (identical(other.cargo, cargo) || other.cargo == cargo) &&
            (identical(other.fuel, fuel) || other.fuel == fuel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      registration,
      nav,
      crew,
      frame,
      reactor,
      engine,
      cooldown,
      const DeepCollectionEquality().hash(_modules),
      const DeepCollectionEquality().hash(_mounts),
      cargo,
      fuel);

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipImplCopyWith<_$ShipImpl> get copyWith =>
      __$$ShipImplCopyWithImpl<_$ShipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipImplToJson(
      this,
    );
  }
}

abstract class _Ship implements Ship {
  const factory _Ship(
      {final String symbol,
      final Registration registration,
      required final ShipNav nav,
      final Crew crew,
      final Frame frame,
      final Reactor reactor,
      final Engine engine,
      final Cooldown cooldown,
      final List<Module> modules,
      final List<Mount> mounts,
      final ShipCargo cargo,
      final Fuel fuel}) = _$ShipImpl;

  factory _Ship.fromJson(Map<String, dynamic> json) = _$ShipImpl.fromJson;

  @override
  String get symbol;
  @override
  Registration get registration;
  @override
  ShipNav get nav;
  @override
  Crew get crew;
  @override
  Frame get frame;
  @override
  Reactor get reactor;
  @override
  Engine get engine;
  @override
  Cooldown get cooldown;
  @override
  List<Module> get modules;
  @override
  List<Mount> get mounts;
  @override
  ShipCargo get cargo;
  @override
  Fuel get fuel;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipImplCopyWith<_$ShipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
