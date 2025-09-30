// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'engine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Engine _$EngineFromJson(Map<String, dynamic> json) {
  return _Engine.fromJson(json);
}

/// @nodoc
mixin _$Engine {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get condition => throw _privateConstructorUsedError;
  int get integrity => throw _privateConstructorUsedError;
  int get speed => throw _privateConstructorUsedError;
  Requirements get requirements => throw _privateConstructorUsedError;

  /// Serializes this Engine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Engine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EngineCopyWith<Engine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineCopyWith<$Res> {
  factory $EngineCopyWith(Engine value, $Res Function(Engine) then) =
      _$EngineCopyWithImpl<$Res, Engine>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      int condition,
      int integrity,
      int speed,
      Requirements requirements});

  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class _$EngineCopyWithImpl<$Res, $Val extends Engine>
    implements $EngineCopyWith<$Res> {
  _$EngineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Engine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? condition = null,
    Object? integrity = null,
    Object? speed = null,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as int,
      integrity: null == integrity
          ? _value.integrity
          : integrity // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ) as $Val);
  }

  /// Create a copy of Engine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequirementsCopyWith<$Res> get requirements {
    return $RequirementsCopyWith<$Res>(_value.requirements, (value) {
      return _then(_value.copyWith(requirements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EngineImplCopyWith<$Res> implements $EngineCopyWith<$Res> {
  factory _$$EngineImplCopyWith(
          _$EngineImpl value, $Res Function(_$EngineImpl) then) =
      __$$EngineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      int condition,
      int integrity,
      int speed,
      Requirements requirements});

  @override
  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class __$$EngineImplCopyWithImpl<$Res>
    extends _$EngineCopyWithImpl<$Res, _$EngineImpl>
    implements _$$EngineImplCopyWith<$Res> {
  __$$EngineImplCopyWithImpl(
      _$EngineImpl _value, $Res Function(_$EngineImpl) _then)
      : super(_value, _then);

  /// Create a copy of Engine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? condition = null,
    Object? integrity = null,
    Object? speed = null,
    Object? requirements = null,
  }) {
    return _then(_$EngineImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as int,
      integrity: null == integrity
          ? _value.integrity
          : integrity // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EngineImpl implements _Engine {
  const _$EngineImpl(
      {this.symbol = '',
      this.name = '',
      this.description = '',
      this.condition = 0,
      this.integrity = 0,
      this.speed = 0,
      this.requirements = const Requirements()});

  factory _$EngineImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngineImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int condition;
  @override
  @JsonKey()
  final int integrity;
  @override
  @JsonKey()
  final int speed;
  @override
  @JsonKey()
  final Requirements requirements;

  @override
  String toString() {
    return 'Engine(symbol: $symbol, name: $name, description: $description, condition: $condition, integrity: $integrity, speed: $speed, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.integrity, integrity) ||
                other.integrity == integrity) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, description,
      condition, integrity, speed, requirements);

  /// Create a copy of Engine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineImplCopyWith<_$EngineImpl> get copyWith =>
      __$$EngineImplCopyWithImpl<_$EngineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngineImplToJson(
      this,
    );
  }
}

abstract class _Engine implements Engine {
  const factory _Engine(
      {final String symbol,
      final String name,
      final String description,
      final int condition,
      final int integrity,
      final int speed,
      final Requirements requirements}) = _$EngineImpl;

  factory _Engine.fromJson(Map<String, dynamic> json) = _$EngineImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get description;
  @override
  int get condition;
  @override
  int get integrity;
  @override
  int get speed;
  @override
  Requirements get requirements;

  /// Create a copy of Engine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EngineImplCopyWith<_$EngineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
