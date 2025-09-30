// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requirements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Requirements _$RequirementsFromJson(Map<String, dynamic> json) {
  return _Requirements.fromJson(json);
}

/// @nodoc
mixin _$Requirements {
  int get power => throw _privateConstructorUsedError;
  int get crew => throw _privateConstructorUsedError;
  int get slots => throw _privateConstructorUsedError;

  /// Serializes this Requirements to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Requirements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequirementsCopyWith<Requirements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequirementsCopyWith<$Res> {
  factory $RequirementsCopyWith(
          Requirements value, $Res Function(Requirements) then) =
      _$RequirementsCopyWithImpl<$Res, Requirements>;
  @useResult
  $Res call({int power, int crew, int slots});
}

/// @nodoc
class _$RequirementsCopyWithImpl<$Res, $Val extends Requirements>
    implements $RequirementsCopyWith<$Res> {
  _$RequirementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Requirements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? power = null,
    Object? crew = null,
    Object? slots = null,
  }) {
    return _then(_value.copyWith(
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as int,
      slots: null == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequirementsImplCopyWith<$Res>
    implements $RequirementsCopyWith<$Res> {
  factory _$$RequirementsImplCopyWith(
          _$RequirementsImpl value, $Res Function(_$RequirementsImpl) then) =
      __$$RequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int power, int crew, int slots});
}

/// @nodoc
class __$$RequirementsImplCopyWithImpl<$Res>
    extends _$RequirementsCopyWithImpl<$Res, _$RequirementsImpl>
    implements _$$RequirementsImplCopyWith<$Res> {
  __$$RequirementsImplCopyWithImpl(
      _$RequirementsImpl _value, $Res Function(_$RequirementsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Requirements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? power = null,
    Object? crew = null,
    Object? slots = null,
  }) {
    return _then(_$RequirementsImpl(
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as int,
      slots: null == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequirementsImpl implements _Requirements {
  const _$RequirementsImpl({this.power = 0, this.crew = 0, this.slots = 0});

  factory _$RequirementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequirementsImplFromJson(json);

  @override
  @JsonKey()
  final int power;
  @override
  @JsonKey()
  final int crew;
  @override
  @JsonKey()
  final int slots;

  @override
  String toString() {
    return 'Requirements(power: $power, crew: $crew, slots: $slots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequirementsImpl &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.crew, crew) || other.crew == crew) &&
            (identical(other.slots, slots) || other.slots == slots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, power, crew, slots);

  /// Create a copy of Requirements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequirementsImplCopyWith<_$RequirementsImpl> get copyWith =>
      __$$RequirementsImplCopyWithImpl<_$RequirementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequirementsImplToJson(
      this,
    );
  }
}

abstract class _Requirements implements Requirements {
  const factory _Requirements(
      {final int power, final int crew, final int slots}) = _$RequirementsImpl;

  factory _Requirements.fromJson(Map<String, dynamic> json) =
      _$RequirementsImpl.fromJson;

  @override
  int get power;
  @override
  int get crew;
  @override
  int get slots;

  /// Create a copy of Requirements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequirementsImplCopyWith<_$RequirementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
