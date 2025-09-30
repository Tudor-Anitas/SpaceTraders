// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fuel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fuel _$FuelFromJson(Map<String, dynamic> json) {
  return _Fuel.fromJson(json);
}

/// @nodoc
mixin _$Fuel {
  int get current => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  Consumed get consumed => throw _privateConstructorUsedError;

  /// Serializes this Fuel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fuel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FuelCopyWith<Fuel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FuelCopyWith<$Res> {
  factory $FuelCopyWith(Fuel value, $Res Function(Fuel) then) =
      _$FuelCopyWithImpl<$Res, Fuel>;
  @useResult
  $Res call({int current, int capacity, Consumed consumed});

  $ConsumedCopyWith<$Res> get consumed;
}

/// @nodoc
class _$FuelCopyWithImpl<$Res, $Val extends Fuel>
    implements $FuelCopyWith<$Res> {
  _$FuelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fuel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? capacity = null,
    Object? consumed = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      consumed: null == consumed
          ? _value.consumed
          : consumed // ignore: cast_nullable_to_non_nullable
              as Consumed,
    ) as $Val);
  }

  /// Create a copy of Fuel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsumedCopyWith<$Res> get consumed {
    return $ConsumedCopyWith<$Res>(_value.consumed, (value) {
      return _then(_value.copyWith(consumed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FuelImplCopyWith<$Res> implements $FuelCopyWith<$Res> {
  factory _$$FuelImplCopyWith(
          _$FuelImpl value, $Res Function(_$FuelImpl) then) =
      __$$FuelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, int capacity, Consumed consumed});

  @override
  $ConsumedCopyWith<$Res> get consumed;
}

/// @nodoc
class __$$FuelImplCopyWithImpl<$Res>
    extends _$FuelCopyWithImpl<$Res, _$FuelImpl>
    implements _$$FuelImplCopyWith<$Res> {
  __$$FuelImplCopyWithImpl(_$FuelImpl _value, $Res Function(_$FuelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fuel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? capacity = null,
    Object? consumed = null,
  }) {
    return _then(_$FuelImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      consumed: null == consumed
          ? _value.consumed
          : consumed // ignore: cast_nullable_to_non_nullable
              as Consumed,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FuelImpl implements _Fuel {
  const _$FuelImpl(
      {this.current = 0, this.capacity = 0, this.consumed = const Consumed()});

  factory _$FuelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FuelImplFromJson(json);

  @override
  @JsonKey()
  final int current;
  @override
  @JsonKey()
  final int capacity;
  @override
  @JsonKey()
  final Consumed consumed;

  @override
  String toString() {
    return 'Fuel(current: $current, capacity: $capacity, consumed: $consumed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FuelImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.consumed, consumed) ||
                other.consumed == consumed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, current, capacity, consumed);

  /// Create a copy of Fuel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FuelImplCopyWith<_$FuelImpl> get copyWith =>
      __$$FuelImplCopyWithImpl<_$FuelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FuelImplToJson(
      this,
    );
  }
}

abstract class _Fuel implements Fuel {
  const factory _Fuel(
      {final int current,
      final int capacity,
      final Consumed consumed}) = _$FuelImpl;

  factory _Fuel.fromJson(Map<String, dynamic> json) = _$FuelImpl.fromJson;

  @override
  int get current;
  @override
  int get capacity;
  @override
  Consumed get consumed;

  /// Create a copy of Fuel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FuelImplCopyWith<_$FuelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
