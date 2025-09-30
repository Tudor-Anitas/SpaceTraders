// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waypoint_trait.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaypointTrait _$WaypointTraitFromJson(Map<String, dynamic> json) {
  return _WaypointTrait.fromJson(json);
}

/// @nodoc
mixin _$WaypointTrait {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this WaypointTrait to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaypointTrait
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaypointTraitCopyWith<WaypointTrait> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaypointTraitCopyWith<$Res> {
  factory $WaypointTraitCopyWith(
          WaypointTrait value, $Res Function(WaypointTrait) then) =
      _$WaypointTraitCopyWithImpl<$Res, WaypointTrait>;
  @useResult
  $Res call({String symbol, String name, String description});
}

/// @nodoc
class _$WaypointTraitCopyWithImpl<$Res, $Val extends WaypointTrait>
    implements $WaypointTraitCopyWith<$Res> {
  _$WaypointTraitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaypointTrait
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaypointTraitImplCopyWith<$Res>
    implements $WaypointTraitCopyWith<$Res> {
  factory _$$WaypointTraitImplCopyWith(
          _$WaypointTraitImpl value, $Res Function(_$WaypointTraitImpl) then) =
      __$$WaypointTraitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String name, String description});
}

/// @nodoc
class __$$WaypointTraitImplCopyWithImpl<$Res>
    extends _$WaypointTraitCopyWithImpl<$Res, _$WaypointTraitImpl>
    implements _$$WaypointTraitImplCopyWith<$Res> {
  __$$WaypointTraitImplCopyWithImpl(
      _$WaypointTraitImpl _value, $Res Function(_$WaypointTraitImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaypointTrait
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$WaypointTraitImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaypointTraitImpl implements _WaypointTrait {
  const _$WaypointTraitImpl(
      {this.symbol = '', this.name = '', this.description = ''});

  factory _$WaypointTraitImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaypointTraitImplFromJson(json);

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
  String toString() {
    return 'WaypointTrait(symbol: $symbol, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaypointTraitImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, description);

  /// Create a copy of WaypointTrait
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaypointTraitImplCopyWith<_$WaypointTraitImpl> get copyWith =>
      __$$WaypointTraitImplCopyWithImpl<_$WaypointTraitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaypointTraitImplToJson(
      this,
    );
  }
}

abstract class _WaypointTrait implements WaypointTrait {
  const factory _WaypointTrait(
      {final String symbol,
      final String name,
      final String description}) = _$WaypointTraitImpl;

  factory _WaypointTrait.fromJson(Map<String, dynamic> json) =
      _$WaypointTraitImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get description;

  /// Create a copy of WaypointTrait
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaypointTraitImplCopyWith<_$WaypointTraitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
