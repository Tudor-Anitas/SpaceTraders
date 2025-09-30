// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Module _$ModuleFromJson(Map<String, dynamic> json) {
  return _Module.fromJson(json);
}

/// @nodoc
mixin _$Module {
  String get symbol => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  int get range => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Requirements get requirements => throw _privateConstructorUsedError;

  /// Serializes this Module to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleCopyWith<Module> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCopyWith<$Res> {
  factory $ModuleCopyWith(Module value, $Res Function(Module) then) =
      _$ModuleCopyWithImpl<$Res, Module>;
  @useResult
  $Res call(
      {String symbol,
      int capacity,
      int range,
      String name,
      String description,
      Requirements requirements});

  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class _$ModuleCopyWithImpl<$Res, $Val extends Module>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? capacity = null,
    Object? range = null,
    Object? name = null,
    Object? description = null,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ) as $Val);
  }

  /// Create a copy of Module
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
abstract class _$$ModuleImplCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$$ModuleImplCopyWith(
          _$ModuleImpl value, $Res Function(_$ModuleImpl) then) =
      __$$ModuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      int capacity,
      int range,
      String name,
      String description,
      Requirements requirements});

  @override
  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class __$$ModuleImplCopyWithImpl<$Res>
    extends _$ModuleCopyWithImpl<$Res, _$ModuleImpl>
    implements _$$ModuleImplCopyWith<$Res> {
  __$$ModuleImplCopyWithImpl(
      _$ModuleImpl _value, $Res Function(_$ModuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? capacity = null,
    Object? range = null,
    Object? name = null,
    Object? description = null,
    Object? requirements = null,
  }) {
    return _then(_$ModuleImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleImpl implements _Module {
  const _$ModuleImpl(
      {this.symbol = '',
      this.capacity = 0,
      this.range = 0,
      this.name = '',
      this.description = '',
      this.requirements = const Requirements()});

  factory _$ModuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final int capacity;
  @override
  @JsonKey()
  final int range;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final Requirements requirements;

  @override
  String toString() {
    return 'Module(symbol: $symbol, capacity: $capacity, range: $range, name: $name, description: $description, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, symbol, capacity, range, name, description, requirements);

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleImplCopyWith<_$ModuleImpl> get copyWith =>
      __$$ModuleImplCopyWithImpl<_$ModuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleImplToJson(
      this,
    );
  }
}

abstract class _Module implements Module {
  const factory _Module(
      {final String symbol,
      final int capacity,
      final int range,
      final String name,
      final String description,
      final Requirements requirements}) = _$ModuleImpl;

  factory _Module.fromJson(Map<String, dynamic> json) = _$ModuleImpl.fromJson;

  @override
  String get symbol;
  @override
  int get capacity;
  @override
  int get range;
  @override
  String get name;
  @override
  String get description;
  @override
  Requirements get requirements;

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleImplCopyWith<_$ModuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
