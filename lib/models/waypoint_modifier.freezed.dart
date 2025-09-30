// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waypoint_modifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaypointModifier _$WaypointModifierFromJson(Map<String, dynamic> json) {
  return _WaypointModifier.fromJson(json);
}

/// @nodoc
mixin _$WaypointModifier {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this WaypointModifier to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaypointModifier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaypointModifierCopyWith<WaypointModifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaypointModifierCopyWith<$Res> {
  factory $WaypointModifierCopyWith(
          WaypointModifier value, $Res Function(WaypointModifier) then) =
      _$WaypointModifierCopyWithImpl<$Res, WaypointModifier>;
  @useResult
  $Res call({String symbol, String name, String description});
}

/// @nodoc
class _$WaypointModifierCopyWithImpl<$Res, $Val extends WaypointModifier>
    implements $WaypointModifierCopyWith<$Res> {
  _$WaypointModifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaypointModifier
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
abstract class _$$WaypointModifierImplCopyWith<$Res>
    implements $WaypointModifierCopyWith<$Res> {
  factory _$$WaypointModifierImplCopyWith(_$WaypointModifierImpl value,
          $Res Function(_$WaypointModifierImpl) then) =
      __$$WaypointModifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String name, String description});
}

/// @nodoc
class __$$WaypointModifierImplCopyWithImpl<$Res>
    extends _$WaypointModifierCopyWithImpl<$Res, _$WaypointModifierImpl>
    implements _$$WaypointModifierImplCopyWith<$Res> {
  __$$WaypointModifierImplCopyWithImpl(_$WaypointModifierImpl _value,
      $Res Function(_$WaypointModifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaypointModifier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$WaypointModifierImpl(
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
class _$WaypointModifierImpl implements _WaypointModifier {
  const _$WaypointModifierImpl(
      {this.symbol = '', this.name = '', this.description = ''});

  factory _$WaypointModifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaypointModifierImplFromJson(json);

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
    return 'WaypointModifier(symbol: $symbol, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaypointModifierImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, description);

  /// Create a copy of WaypointModifier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaypointModifierImplCopyWith<_$WaypointModifierImpl> get copyWith =>
      __$$WaypointModifierImplCopyWithImpl<_$WaypointModifierImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaypointModifierImplToJson(
      this,
    );
  }
}

abstract class _WaypointModifier implements WaypointModifier {
  const factory _WaypointModifier(
      {final String symbol,
      final String name,
      final String description}) = _$WaypointModifierImpl;

  factory _WaypointModifier.fromJson(Map<String, dynamic> json) =
      _$WaypointModifierImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get description;

  /// Create a copy of WaypointModifier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaypointModifierImplCopyWith<_$WaypointModifierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
