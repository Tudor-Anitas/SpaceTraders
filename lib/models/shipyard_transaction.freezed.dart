// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipyard_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipyardTransaction _$ShipyardTransactionFromJson(Map<String, dynamic> json) {
  return _ShipyardTransaction.fromJson(json);
}

/// @nodoc
mixin _$ShipyardTransaction {
  String get waypointSymbol => throw _privateConstructorUsedError;
  String get shipSymbol => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get agentSymbol => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this ShipyardTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipyardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipyardTransactionCopyWith<ShipyardTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipyardTransactionCopyWith<$Res> {
  factory $ShipyardTransactionCopyWith(
          ShipyardTransaction value, $Res Function(ShipyardTransaction) then) =
      _$ShipyardTransactionCopyWithImpl<$Res, ShipyardTransaction>;
  @useResult
  $Res call(
      {String waypointSymbol,
      String shipSymbol,
      int price,
      String agentSymbol,
      String timestamp});
}

/// @nodoc
class _$ShipyardTransactionCopyWithImpl<$Res, $Val extends ShipyardTransaction>
    implements $ShipyardTransactionCopyWith<$Res> {
  _$ShipyardTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipyardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypointSymbol = null,
    Object? shipSymbol = null,
    Object? price = null,
    Object? agentSymbol = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      waypointSymbol: null == waypointSymbol
          ? _value.waypointSymbol
          : waypointSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      agentSymbol: null == agentSymbol
          ? _value.agentSymbol
          : agentSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipyardTransactionImplCopyWith<$Res>
    implements $ShipyardTransactionCopyWith<$Res> {
  factory _$$ShipyardTransactionImplCopyWith(_$ShipyardTransactionImpl value,
          $Res Function(_$ShipyardTransactionImpl) then) =
      __$$ShipyardTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String waypointSymbol,
      String shipSymbol,
      int price,
      String agentSymbol,
      String timestamp});
}

/// @nodoc
class __$$ShipyardTransactionImplCopyWithImpl<$Res>
    extends _$ShipyardTransactionCopyWithImpl<$Res, _$ShipyardTransactionImpl>
    implements _$$ShipyardTransactionImplCopyWith<$Res> {
  __$$ShipyardTransactionImplCopyWithImpl(_$ShipyardTransactionImpl _value,
      $Res Function(_$ShipyardTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipyardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypointSymbol = null,
    Object? shipSymbol = null,
    Object? price = null,
    Object? agentSymbol = null,
    Object? timestamp = null,
  }) {
    return _then(_$ShipyardTransactionImpl(
      waypointSymbol: null == waypointSymbol
          ? _value.waypointSymbol
          : waypointSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      agentSymbol: null == agentSymbol
          ? _value.agentSymbol
          : agentSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipyardTransactionImpl implements _ShipyardTransaction {
  const _$ShipyardTransactionImpl(
      {this.waypointSymbol = '',
      this.shipSymbol = '',
      this.price = 0,
      this.agentSymbol = '',
      this.timestamp = ''});

  factory _$ShipyardTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipyardTransactionImplFromJson(json);

  @override
  @JsonKey()
  final String waypointSymbol;
  @override
  @JsonKey()
  final String shipSymbol;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final String agentSymbol;
  @override
  @JsonKey()
  final String timestamp;

  @override
  String toString() {
    return 'ShipyardTransaction(waypointSymbol: $waypointSymbol, shipSymbol: $shipSymbol, price: $price, agentSymbol: $agentSymbol, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipyardTransactionImpl &&
            (identical(other.waypointSymbol, waypointSymbol) ||
                other.waypointSymbol == waypointSymbol) &&
            (identical(other.shipSymbol, shipSymbol) ||
                other.shipSymbol == shipSymbol) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.agentSymbol, agentSymbol) ||
                other.agentSymbol == agentSymbol) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, waypointSymbol, shipSymbol, price, agentSymbol, timestamp);

  /// Create a copy of ShipyardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipyardTransactionImplCopyWith<_$ShipyardTransactionImpl> get copyWith =>
      __$$ShipyardTransactionImplCopyWithImpl<_$ShipyardTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipyardTransactionImplToJson(
      this,
    );
  }
}

abstract class _ShipyardTransaction implements ShipyardTransaction {
  const factory _ShipyardTransaction(
      {final String waypointSymbol,
      final String shipSymbol,
      final int price,
      final String agentSymbol,
      final String timestamp}) = _$ShipyardTransactionImpl;

  factory _ShipyardTransaction.fromJson(Map<String, dynamic> json) =
      _$ShipyardTransactionImpl.fromJson;

  @override
  String get waypointSymbol;
  @override
  String get shipSymbol;
  @override
  int get price;
  @override
  String get agentSymbol;
  @override
  String get timestamp;

  /// Create a copy of ShipyardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipyardTransactionImplCopyWith<_$ShipyardTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
