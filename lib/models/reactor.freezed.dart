// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reactor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Reactor _$ReactorFromJson(Map<String, dynamic> json) {
  return _Reactor.fromJson(json);
}

/// @nodoc
mixin _$Reactor {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get condition => throw _privateConstructorUsedError;
  int get integrity => throw _privateConstructorUsedError;
  int get powerOutput => throw _privateConstructorUsedError;
  Requirements get requirements => throw _privateConstructorUsedError;

  /// Serializes this Reactor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reactor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactorCopyWith<Reactor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactorCopyWith<$Res> {
  factory $ReactorCopyWith(Reactor value, $Res Function(Reactor) then) =
      _$ReactorCopyWithImpl<$Res, Reactor>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      int condition,
      int integrity,
      int powerOutput,
      Requirements requirements});

  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class _$ReactorCopyWithImpl<$Res, $Val extends Reactor>
    implements $ReactorCopyWith<$Res> {
  _$ReactorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reactor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? condition = null,
    Object? integrity = null,
    Object? powerOutput = null,
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
      powerOutput: null == powerOutput
          ? _value.powerOutput
          : powerOutput // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ) as $Val);
  }

  /// Create a copy of Reactor
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
abstract class _$$ReactorImplCopyWith<$Res> implements $ReactorCopyWith<$Res> {
  factory _$$ReactorImplCopyWith(
          _$ReactorImpl value, $Res Function(_$ReactorImpl) then) =
      __$$ReactorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String description,
      int condition,
      int integrity,
      int powerOutput,
      Requirements requirements});

  @override
  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class __$$ReactorImplCopyWithImpl<$Res>
    extends _$ReactorCopyWithImpl<$Res, _$ReactorImpl>
    implements _$$ReactorImplCopyWith<$Res> {
  __$$ReactorImplCopyWithImpl(
      _$ReactorImpl _value, $Res Function(_$ReactorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reactor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
    Object? condition = null,
    Object? integrity = null,
    Object? powerOutput = null,
    Object? requirements = null,
  }) {
    return _then(_$ReactorImpl(
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
      powerOutput: null == powerOutput
          ? _value.powerOutput
          : powerOutput // ignore: cast_nullable_to_non_nullable
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
class _$ReactorImpl implements _Reactor {
  const _$ReactorImpl(
      {this.symbol = '',
      this.name = '',
      this.description = '',
      this.condition = 0,
      this.integrity = 0,
      this.powerOutput = 0,
      this.requirements = const Requirements()});

  factory _$ReactorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactorImplFromJson(json);

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
  final int powerOutput;
  @override
  @JsonKey()
  final Requirements requirements;

  @override
  String toString() {
    return 'Reactor(symbol: $symbol, name: $name, description: $description, condition: $condition, integrity: $integrity, powerOutput: $powerOutput, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactorImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.integrity, integrity) ||
                other.integrity == integrity) &&
            (identical(other.powerOutput, powerOutput) ||
                other.powerOutput == powerOutput) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, description,
      condition, integrity, powerOutput, requirements);

  /// Create a copy of Reactor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactorImplCopyWith<_$ReactorImpl> get copyWith =>
      __$$ReactorImplCopyWithImpl<_$ReactorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactorImplToJson(
      this,
    );
  }
}

abstract class _Reactor implements Reactor {
  const factory _Reactor(
      {final String symbol,
      final String name,
      final String description,
      final int condition,
      final int integrity,
      final int powerOutput,
      final Requirements requirements}) = _$ReactorImpl;

  factory _Reactor.fromJson(Map<String, dynamic> json) = _$ReactorImpl.fromJson;

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
  int get powerOutput;
  @override
  Requirements get requirements;

  /// Create a copy of Reactor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactorImplCopyWith<_$ReactorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
