// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketTransaction _$MarketTransactionFromJson(Map<String, dynamic> json) {
  return _MarketTransaction.fromJson(json);
}

/// @nodoc
mixin _$MarketTransaction {
  String get waypointSymbol => throw _privateConstructorUsedError;
  String get shipSymbol => throw _privateConstructorUsedError;
  String get tradeSymbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get units => throw _privateConstructorUsedError;
  int get pricePerUnit => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this MarketTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketTransactionCopyWith<MarketTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketTransactionCopyWith<$Res> {
  factory $MarketTransactionCopyWith(
          MarketTransaction value, $Res Function(MarketTransaction) then) =
      _$MarketTransactionCopyWithImpl<$Res, MarketTransaction>;
  @useResult
  $Res call(
      {String waypointSymbol,
      String shipSymbol,
      String tradeSymbol,
      String type,
      int units,
      int pricePerUnit,
      int totalPrice,
      String timestamp});
}

/// @nodoc
class _$MarketTransactionCopyWithImpl<$Res, $Val extends MarketTransaction>
    implements $MarketTransactionCopyWith<$Res> {
  _$MarketTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypointSymbol = null,
    Object? shipSymbol = null,
    Object? tradeSymbol = null,
    Object? type = null,
    Object? units = null,
    Object? pricePerUnit = null,
    Object? totalPrice = null,
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
      tradeSymbol: null == tradeSymbol
          ? _value.tradeSymbol
          : tradeSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketTransactionImplCopyWith<$Res>
    implements $MarketTransactionCopyWith<$Res> {
  factory _$$MarketTransactionImplCopyWith(_$MarketTransactionImpl value,
          $Res Function(_$MarketTransactionImpl) then) =
      __$$MarketTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String waypointSymbol,
      String shipSymbol,
      String tradeSymbol,
      String type,
      int units,
      int pricePerUnit,
      int totalPrice,
      String timestamp});
}

/// @nodoc
class __$$MarketTransactionImplCopyWithImpl<$Res>
    extends _$MarketTransactionCopyWithImpl<$Res, _$MarketTransactionImpl>
    implements _$$MarketTransactionImplCopyWith<$Res> {
  __$$MarketTransactionImplCopyWithImpl(_$MarketTransactionImpl _value,
      $Res Function(_$MarketTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypointSymbol = null,
    Object? shipSymbol = null,
    Object? tradeSymbol = null,
    Object? type = null,
    Object? units = null,
    Object? pricePerUnit = null,
    Object? totalPrice = null,
    Object? timestamp = null,
  }) {
    return _then(_$MarketTransactionImpl(
      waypointSymbol: null == waypointSymbol
          ? _value.waypointSymbol
          : waypointSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      shipSymbol: null == shipSymbol
          ? _value.shipSymbol
          : shipSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tradeSymbol: null == tradeSymbol
          ? _value.tradeSymbol
          : tradeSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketTransactionImpl implements _MarketTransaction {
  const _$MarketTransactionImpl(
      {this.waypointSymbol = '',
      this.shipSymbol = '',
      this.tradeSymbol = '',
      this.type = '',
      this.units = 0,
      this.pricePerUnit = 0,
      this.totalPrice = 0,
      this.timestamp = ''});

  factory _$MarketTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketTransactionImplFromJson(json);

  @override
  @JsonKey()
  final String waypointSymbol;
  @override
  @JsonKey()
  final String shipSymbol;
  @override
  @JsonKey()
  final String tradeSymbol;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int units;
  @override
  @JsonKey()
  final int pricePerUnit;
  @override
  @JsonKey()
  final int totalPrice;
  @override
  @JsonKey()
  final String timestamp;

  @override
  String toString() {
    return 'MarketTransaction(waypointSymbol: $waypointSymbol, shipSymbol: $shipSymbol, tradeSymbol: $tradeSymbol, type: $type, units: $units, pricePerUnit: $pricePerUnit, totalPrice: $totalPrice, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketTransactionImpl &&
            (identical(other.waypointSymbol, waypointSymbol) ||
                other.waypointSymbol == waypointSymbol) &&
            (identical(other.shipSymbol, shipSymbol) ||
                other.shipSymbol == shipSymbol) &&
            (identical(other.tradeSymbol, tradeSymbol) ||
                other.tradeSymbol == tradeSymbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.pricePerUnit, pricePerUnit) ||
                other.pricePerUnit == pricePerUnit) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, waypointSymbol, shipSymbol,
      tradeSymbol, type, units, pricePerUnit, totalPrice, timestamp);

  /// Create a copy of MarketTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketTransactionImplCopyWith<_$MarketTransactionImpl> get copyWith =>
      __$$MarketTransactionImplCopyWithImpl<_$MarketTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketTransactionImplToJson(
      this,
    );
  }
}

abstract class _MarketTransaction implements MarketTransaction {
  const factory _MarketTransaction(
      {final String waypointSymbol,
      final String shipSymbol,
      final String tradeSymbol,
      final String type,
      final int units,
      final int pricePerUnit,
      final int totalPrice,
      final String timestamp}) = _$MarketTransactionImpl;

  factory _MarketTransaction.fromJson(Map<String, dynamic> json) =
      _$MarketTransactionImpl.fromJson;

  @override
  String get waypointSymbol;
  @override
  String get shipSymbol;
  @override
  String get tradeSymbol;
  @override
  String get type;
  @override
  int get units;
  @override
  int get pricePerUnit;
  @override
  int get totalPrice;
  @override
  String get timestamp;

  /// Create a copy of MarketTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketTransactionImplCopyWith<_$MarketTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
