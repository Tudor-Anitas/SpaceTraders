// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipyard_crew.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipyardCrew _$ShipyardCrewFromJson(Map<String, dynamic> json) {
  return _ShipyardCrew.fromJson(json);
}

/// @nodoc
mixin _$ShipyardCrew {
  int get requiredCrew => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;

  /// Serializes this ShipyardCrew to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipyardCrew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipyardCrewCopyWith<ShipyardCrew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipyardCrewCopyWith<$Res> {
  factory $ShipyardCrewCopyWith(
          ShipyardCrew value, $Res Function(ShipyardCrew) then) =
      _$ShipyardCrewCopyWithImpl<$Res, ShipyardCrew>;
  @useResult
  $Res call({int requiredCrew, int capacity});
}

/// @nodoc
class _$ShipyardCrewCopyWithImpl<$Res, $Val extends ShipyardCrew>
    implements $ShipyardCrewCopyWith<$Res> {
  _$ShipyardCrewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipyardCrew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredCrew = null,
    Object? capacity = null,
  }) {
    return _then(_value.copyWith(
      requiredCrew: null == requiredCrew
          ? _value.requiredCrew
          : requiredCrew // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipyardCrewImplCopyWith<$Res>
    implements $ShipyardCrewCopyWith<$Res> {
  factory _$$ShipyardCrewImplCopyWith(
          _$ShipyardCrewImpl value, $Res Function(_$ShipyardCrewImpl) then) =
      __$$ShipyardCrewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requiredCrew, int capacity});
}

/// @nodoc
class __$$ShipyardCrewImplCopyWithImpl<$Res>
    extends _$ShipyardCrewCopyWithImpl<$Res, _$ShipyardCrewImpl>
    implements _$$ShipyardCrewImplCopyWith<$Res> {
  __$$ShipyardCrewImplCopyWithImpl(
      _$ShipyardCrewImpl _value, $Res Function(_$ShipyardCrewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipyardCrew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredCrew = null,
    Object? capacity = null,
  }) {
    return _then(_$ShipyardCrewImpl(
      requiredCrew: null == requiredCrew
          ? _value.requiredCrew
          : requiredCrew // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipyardCrewImpl implements _ShipyardCrew {
  const _$ShipyardCrewImpl({this.requiredCrew = 0, this.capacity = 0});

  factory _$ShipyardCrewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipyardCrewImplFromJson(json);

  @override
  @JsonKey()
  final int requiredCrew;
  @override
  @JsonKey()
  final int capacity;

  @override
  String toString() {
    return 'ShipyardCrew(requiredCrew: $requiredCrew, capacity: $capacity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipyardCrewImpl &&
            (identical(other.requiredCrew, requiredCrew) ||
                other.requiredCrew == requiredCrew) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requiredCrew, capacity);

  /// Create a copy of ShipyardCrew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipyardCrewImplCopyWith<_$ShipyardCrewImpl> get copyWith =>
      __$$ShipyardCrewImplCopyWithImpl<_$ShipyardCrewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipyardCrewImplToJson(
      this,
    );
  }
}

abstract class _ShipyardCrew implements ShipyardCrew {
  const factory _ShipyardCrew({final int requiredCrew, final int capacity}) =
      _$ShipyardCrewImpl;

  factory _ShipyardCrew.fromJson(Map<String, dynamic> json) =
      _$ShipyardCrewImpl.fromJson;

  @override
  int get requiredCrew;
  @override
  int get capacity;

  /// Create a copy of ShipyardCrew
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipyardCrewImplCopyWith<_$ShipyardCrewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
