// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ship_cargo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipCargo _$ShipCargoFromJson(Map<String, dynamic> json) {
  return _ShipCargo.fromJson(json);
}

/// @nodoc
mixin _$ShipCargo {
  int get capacity => throw _privateConstructorUsedError;
  int get units => throw _privateConstructorUsedError;
  List<Inventory> get inventory => throw _privateConstructorUsedError;

  /// Serializes this ShipCargo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipCargo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipCargoCopyWith<ShipCargo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipCargoCopyWith<$Res> {
  factory $ShipCargoCopyWith(ShipCargo value, $Res Function(ShipCargo) then) =
      _$ShipCargoCopyWithImpl<$Res, ShipCargo>;
  @useResult
  $Res call({int capacity, int units, List<Inventory> inventory});
}

/// @nodoc
class _$ShipCargoCopyWithImpl<$Res, $Val extends ShipCargo>
    implements $ShipCargoCopyWith<$Res> {
  _$ShipCargoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipCargo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capacity = null,
    Object? units = null,
    Object? inventory = null,
  }) {
    return _then(_value.copyWith(
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as List<Inventory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipCargoImplCopyWith<$Res>
    implements $ShipCargoCopyWith<$Res> {
  factory _$$ShipCargoImplCopyWith(
          _$ShipCargoImpl value, $Res Function(_$ShipCargoImpl) then) =
      __$$ShipCargoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int capacity, int units, List<Inventory> inventory});
}

/// @nodoc
class __$$ShipCargoImplCopyWithImpl<$Res>
    extends _$ShipCargoCopyWithImpl<$Res, _$ShipCargoImpl>
    implements _$$ShipCargoImplCopyWith<$Res> {
  __$$ShipCargoImplCopyWithImpl(
      _$ShipCargoImpl _value, $Res Function(_$ShipCargoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipCargo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capacity = null,
    Object? units = null,
    Object? inventory = null,
  }) {
    return _then(_$ShipCargoImpl(
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
      inventory: null == inventory
          ? _value._inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as List<Inventory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipCargoImpl implements _ShipCargo {
  const _$ShipCargoImpl(
      {this.capacity = 0,
      this.units = 0,
      final List<Inventory> inventory = const []})
      : _inventory = inventory;

  factory _$ShipCargoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipCargoImplFromJson(json);

  @override
  @JsonKey()
  final int capacity;
  @override
  @JsonKey()
  final int units;
  final List<Inventory> _inventory;
  @override
  @JsonKey()
  List<Inventory> get inventory {
    if (_inventory is EqualUnmodifiableListView) return _inventory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventory);
  }

  @override
  String toString() {
    return 'ShipCargo(capacity: $capacity, units: $units, inventory: $inventory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipCargoImpl &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.units, units) || other.units == units) &&
            const DeepCollectionEquality()
                .equals(other._inventory, _inventory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, capacity, units,
      const DeepCollectionEquality().hash(_inventory));

  /// Create a copy of ShipCargo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipCargoImplCopyWith<_$ShipCargoImpl> get copyWith =>
      __$$ShipCargoImplCopyWithImpl<_$ShipCargoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipCargoImplToJson(
      this,
    );
  }
}

abstract class _ShipCargo implements ShipCargo {
  const factory _ShipCargo(
      {final int capacity,
      final int units,
      final List<Inventory> inventory}) = _$ShipCargoImpl;

  factory _ShipCargo.fromJson(Map<String, dynamic> json) =
      _$ShipCargoImpl.fromJson;

  @override
  int get capacity;
  @override
  int get units;
  @override
  List<Inventory> get inventory;

  /// Create a copy of ShipCargo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipCargoImplCopyWith<_$ShipCargoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
