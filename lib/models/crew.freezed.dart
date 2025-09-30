// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crew.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return _Crew.fromJson(json);
}

/// @nodoc
mixin _$Crew {
  int get current => throw _privateConstructorUsedError;
  int get requiredCrew => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  String get rotation => throw _privateConstructorUsedError;
  int get morale => throw _privateConstructorUsedError;
  int get wages => throw _privateConstructorUsedError;

  /// Serializes this Crew to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Crew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CrewCopyWith<Crew> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewCopyWith<$Res> {
  factory $CrewCopyWith(Crew value, $Res Function(Crew) then) =
      _$CrewCopyWithImpl<$Res, Crew>;
  @useResult
  $Res call(
      {int current,
      int requiredCrew,
      int capacity,
      String rotation,
      int morale,
      int wages});
}

/// @nodoc
class _$CrewCopyWithImpl<$Res, $Val extends Crew>
    implements $CrewCopyWith<$Res> {
  _$CrewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Crew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? requiredCrew = null,
    Object? capacity = null,
    Object? rotation = null,
    Object? morale = null,
    Object? wages = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      requiredCrew: null == requiredCrew
          ? _value.requiredCrew
          : requiredCrew // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      rotation: null == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as String,
      morale: null == morale
          ? _value.morale
          : morale // ignore: cast_nullable_to_non_nullable
              as int,
      wages: null == wages
          ? _value.wages
          : wages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CrewImplCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$$CrewImplCopyWith(
          _$CrewImpl value, $Res Function(_$CrewImpl) then) =
      __$$CrewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int current,
      int requiredCrew,
      int capacity,
      String rotation,
      int morale,
      int wages});
}

/// @nodoc
class __$$CrewImplCopyWithImpl<$Res>
    extends _$CrewCopyWithImpl<$Res, _$CrewImpl>
    implements _$$CrewImplCopyWith<$Res> {
  __$$CrewImplCopyWithImpl(_$CrewImpl _value, $Res Function(_$CrewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Crew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? requiredCrew = null,
    Object? capacity = null,
    Object? rotation = null,
    Object? morale = null,
    Object? wages = null,
  }) {
    return _then(_$CrewImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      requiredCrew: null == requiredCrew
          ? _value.requiredCrew
          : requiredCrew // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      rotation: null == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as String,
      morale: null == morale
          ? _value.morale
          : morale // ignore: cast_nullable_to_non_nullable
              as int,
      wages: null == wages
          ? _value.wages
          : wages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrewImpl implements _Crew {
  const _$CrewImpl(
      {this.current = 0,
      this.requiredCrew = 0,
      this.capacity = 0,
      this.rotation = '',
      this.morale = 0,
      this.wages = 0});

  factory _$CrewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrewImplFromJson(json);

  @override
  @JsonKey()
  final int current;
  @override
  @JsonKey()
  final int requiredCrew;
  @override
  @JsonKey()
  final int capacity;
  @override
  @JsonKey()
  final String rotation;
  @override
  @JsonKey()
  final int morale;
  @override
  @JsonKey()
  final int wages;

  @override
  String toString() {
    return 'Crew(current: $current, requiredCrew: $requiredCrew, capacity: $capacity, rotation: $rotation, morale: $morale, wages: $wages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrewImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.requiredCrew, requiredCrew) ||
                other.requiredCrew == requiredCrew) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.rotation, rotation) ||
                other.rotation == rotation) &&
            (identical(other.morale, morale) || other.morale == morale) &&
            (identical(other.wages, wages) || other.wages == wages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, current, requiredCrew, capacity, rotation, morale, wages);

  /// Create a copy of Crew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrewImplCopyWith<_$CrewImpl> get copyWith =>
      __$$CrewImplCopyWithImpl<_$CrewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrewImplToJson(
      this,
    );
  }
}

abstract class _Crew implements Crew {
  const factory _Crew(
      {final int current,
      final int requiredCrew,
      final int capacity,
      final String rotation,
      final int morale,
      final int wages}) = _$CrewImpl;

  factory _Crew.fromJson(Map<String, dynamic> json) = _$CrewImpl.fromJson;

  @override
  int get current;
  @override
  int get requiredCrew;
  @override
  int get capacity;
  @override
  String get rotation;
  @override
  int get morale;
  @override
  int get wages;

  /// Create a copy of Crew
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrewImplCopyWith<_$CrewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
