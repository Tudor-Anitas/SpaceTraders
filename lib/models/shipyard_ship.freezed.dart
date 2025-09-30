// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipyard_ship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipyardShip _$ShipyardShipFromJson(Map<String, dynamic> json) {
  return _ShipyardShip.fromJson(json);
}

/// @nodoc
mixin _$ShipyardShip {
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get purchasePrice => throw _privateConstructorUsedError;
  Frame get frame => throw _privateConstructorUsedError;
  Reactor get reactor => throw _privateConstructorUsedError;
  Engine get engine => throw _privateConstructorUsedError;
  List<Module> get modules => throw _privateConstructorUsedError;
  List<Mount> get mounts => throw _privateConstructorUsedError;

  /// Serializes this ShipyardShip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipyardShip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipyardShipCopyWith<ShipyardShip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipyardShipCopyWith<$Res> {
  factory $ShipyardShipCopyWith(
          ShipyardShip value, $Res Function(ShipyardShip) then) =
      _$ShipyardShipCopyWithImpl<$Res, ShipyardShip>;
  @useResult
  $Res call(
      {String type,
      String name,
      String description,
      int purchasePrice,
      Frame frame,
      Reactor reactor,
      Engine engine,
      List<Module> modules,
      List<Mount> mounts});

  $FrameCopyWith<$Res> get frame;
  $ReactorCopyWith<$Res> get reactor;
  $EngineCopyWith<$Res> get engine;
}

/// @nodoc
class _$ShipyardShipCopyWithImpl<$Res, $Val extends ShipyardShip>
    implements $ShipyardShipCopyWith<$Res> {
  _$ShipyardShipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipyardShip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? description = null,
    Object? purchasePrice = null,
    Object? frame = null,
    Object? reactor = null,
    Object? engine = null,
    Object? modules = null,
    Object? mounts = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as int,
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
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
      mounts: null == mounts
          ? _value.mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<Mount>,
    ) as $Val);
  }

  /// Create a copy of ShipyardShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FrameCopyWith<$Res> get frame {
    return $FrameCopyWith<$Res>(_value.frame, (value) {
      return _then(_value.copyWith(frame: value) as $Val);
    });
  }

  /// Create a copy of ShipyardShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReactorCopyWith<$Res> get reactor {
    return $ReactorCopyWith<$Res>(_value.reactor, (value) {
      return _then(_value.copyWith(reactor: value) as $Val);
    });
  }

  /// Create a copy of ShipyardShip
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
abstract class _$$ShipyardShipImplCopyWith<$Res>
    implements $ShipyardShipCopyWith<$Res> {
  factory _$$ShipyardShipImplCopyWith(
          _$ShipyardShipImpl value, $Res Function(_$ShipyardShipImpl) then) =
      __$$ShipyardShipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String name,
      String description,
      int purchasePrice,
      Frame frame,
      Reactor reactor,
      Engine engine,
      List<Module> modules,
      List<Mount> mounts});

  @override
  $FrameCopyWith<$Res> get frame;
  @override
  $ReactorCopyWith<$Res> get reactor;
  @override
  $EngineCopyWith<$Res> get engine;
}

/// @nodoc
class __$$ShipyardShipImplCopyWithImpl<$Res>
    extends _$ShipyardShipCopyWithImpl<$Res, _$ShipyardShipImpl>
    implements _$$ShipyardShipImplCopyWith<$Res> {
  __$$ShipyardShipImplCopyWithImpl(
      _$ShipyardShipImpl _value, $Res Function(_$ShipyardShipImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipyardShip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? description = null,
    Object? purchasePrice = null,
    Object? frame = null,
    Object? reactor = null,
    Object? engine = null,
    Object? modules = null,
    Object? mounts = null,
  }) {
    return _then(_$ShipyardShipImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as int,
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
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
      mounts: null == mounts
          ? _value._mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<Mount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipyardShipImpl implements _ShipyardShip {
  const _$ShipyardShipImpl(
      {required this.type,
      required this.name,
      required this.description,
      required this.purchasePrice,
      required this.frame,
      required this.reactor,
      required this.engine,
      final List<Module> modules = const [],
      final List<Mount> mounts = const []})
      : _modules = modules,
        _mounts = mounts;

  factory _$ShipyardShipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipyardShipImplFromJson(json);

  @override
  final String type;
  @override
  final String name;
  @override
  final String description;
  @override
  final int purchasePrice;
  @override
  final Frame frame;
  @override
  final Reactor reactor;
  @override
  final Engine engine;
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
  String toString() {
    return 'ShipyardShip(type: $type, name: $name, description: $description, purchasePrice: $purchasePrice, frame: $frame, reactor: $reactor, engine: $engine, modules: $modules, mounts: $mounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipyardShipImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.frame, frame) || other.frame == frame) &&
            (identical(other.reactor, reactor) || other.reactor == reactor) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            const DeepCollectionEquality().equals(other._modules, _modules) &&
            const DeepCollectionEquality().equals(other._mounts, _mounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      name,
      description,
      purchasePrice,
      frame,
      reactor,
      engine,
      const DeepCollectionEquality().hash(_modules),
      const DeepCollectionEquality().hash(_mounts));

  /// Create a copy of ShipyardShip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipyardShipImplCopyWith<_$ShipyardShipImpl> get copyWith =>
      __$$ShipyardShipImplCopyWithImpl<_$ShipyardShipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipyardShipImplToJson(
      this,
    );
  }
}

abstract class _ShipyardShip implements ShipyardShip {
  const factory _ShipyardShip(
      {required final String type,
      required final String name,
      required final String description,
      required final int purchasePrice,
      required final Frame frame,
      required final Reactor reactor,
      required final Engine engine,
      final List<Module> modules,
      final List<Mount> mounts}) = _$ShipyardShipImpl;

  factory _ShipyardShip.fromJson(Map<String, dynamic> json) =
      _$ShipyardShipImpl.fromJson;

  @override
  String get type;
  @override
  String get name;
  @override
  String get description;
  @override
  int get purchasePrice;
  @override
  Frame get frame;
  @override
  Reactor get reactor;
  @override
  Engine get engine;
  @override
  List<Module> get modules;
  @override
  List<Mount> get mounts;

  /// Create a copy of ShipyardShip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipyardShipImplCopyWith<_$ShipyardShipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
