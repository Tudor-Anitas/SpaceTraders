// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_trade_goods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketTradeGoods _$MarketTradeGoodsFromJson(Map<String, dynamic> json) {
  return _MarketTradeGoods.fromJson(json);
}

/// @nodoc
mixin _$MarketTradeGoods {
  String get symbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get tradeVolume => throw _privateConstructorUsedError;
  String get supply => throw _privateConstructorUsedError;
  String get activity => throw _privateConstructorUsedError;
  int get purchasePrice => throw _privateConstructorUsedError;
  int get sellPrice => throw _privateConstructorUsedError;

  /// Serializes this MarketTradeGoods to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketTradeGoods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketTradeGoodsCopyWith<MarketTradeGoods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketTradeGoodsCopyWith<$Res> {
  factory $MarketTradeGoodsCopyWith(
          MarketTradeGoods value, $Res Function(MarketTradeGoods) then) =
      _$MarketTradeGoodsCopyWithImpl<$Res, MarketTradeGoods>;
  @useResult
  $Res call(
      {String symbol,
      String type,
      int tradeVolume,
      String supply,
      String activity,
      int purchasePrice,
      int sellPrice});
}

/// @nodoc
class _$MarketTradeGoodsCopyWithImpl<$Res, $Val extends MarketTradeGoods>
    implements $MarketTradeGoodsCopyWith<$Res> {
  _$MarketTradeGoodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketTradeGoods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? type = null,
    Object? tradeVolume = null,
    Object? supply = null,
    Object? activity = null,
    Object? purchasePrice = null,
    Object? sellPrice = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      tradeVolume: null == tradeVolume
          ? _value.tradeVolume
          : tradeVolume // ignore: cast_nullable_to_non_nullable
              as int,
      supply: null == supply
          ? _value.supply
          : supply // ignore: cast_nullable_to_non_nullable
              as String,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketTradeGoodsImplCopyWith<$Res>
    implements $MarketTradeGoodsCopyWith<$Res> {
  factory _$$MarketTradeGoodsImplCopyWith(_$MarketTradeGoodsImpl value,
          $Res Function(_$MarketTradeGoodsImpl) then) =
      __$$MarketTradeGoodsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String type,
      int tradeVolume,
      String supply,
      String activity,
      int purchasePrice,
      int sellPrice});
}

/// @nodoc
class __$$MarketTradeGoodsImplCopyWithImpl<$Res>
    extends _$MarketTradeGoodsCopyWithImpl<$Res, _$MarketTradeGoodsImpl>
    implements _$$MarketTradeGoodsImplCopyWith<$Res> {
  __$$MarketTradeGoodsImplCopyWithImpl(_$MarketTradeGoodsImpl _value,
      $Res Function(_$MarketTradeGoodsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketTradeGoods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? type = null,
    Object? tradeVolume = null,
    Object? supply = null,
    Object? activity = null,
    Object? purchasePrice = null,
    Object? sellPrice = null,
  }) {
    return _then(_$MarketTradeGoodsImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      tradeVolume: null == tradeVolume
          ? _value.tradeVolume
          : tradeVolume // ignore: cast_nullable_to_non_nullable
              as int,
      supply: null == supply
          ? _value.supply
          : supply // ignore: cast_nullable_to_non_nullable
              as String,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketTradeGoodsImpl implements _MarketTradeGoods {
  const _$MarketTradeGoodsImpl(
      {this.symbol = '',
      this.type = '',
      this.tradeVolume = 0,
      this.supply = '',
      this.activity = '',
      this.purchasePrice = 0,
      this.sellPrice = 0});

  factory _$MarketTradeGoodsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketTradeGoodsImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int tradeVolume;
  @override
  @JsonKey()
  final String supply;
  @override
  @JsonKey()
  final String activity;
  @override
  @JsonKey()
  final int purchasePrice;
  @override
  @JsonKey()
  final int sellPrice;

  @override
  String toString() {
    return 'MarketTradeGoods(symbol: $symbol, type: $type, tradeVolume: $tradeVolume, supply: $supply, activity: $activity, purchasePrice: $purchasePrice, sellPrice: $sellPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketTradeGoodsImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tradeVolume, tradeVolume) ||
                other.tradeVolume == tradeVolume) &&
            (identical(other.supply, supply) || other.supply == supply) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, type, tradeVolume,
      supply, activity, purchasePrice, sellPrice);

  /// Create a copy of MarketTradeGoods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketTradeGoodsImplCopyWith<_$MarketTradeGoodsImpl> get copyWith =>
      __$$MarketTradeGoodsImplCopyWithImpl<_$MarketTradeGoodsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketTradeGoodsImplToJson(
      this,
    );
  }
}

abstract class _MarketTradeGoods implements MarketTradeGoods {
  const factory _MarketTradeGoods(
      {final String symbol,
      final String type,
      final int tradeVolume,
      final String supply,
      final String activity,
      final int purchasePrice,
      final int sellPrice}) = _$MarketTradeGoodsImpl;

  factory _MarketTradeGoods.fromJson(Map<String, dynamic> json) =
      _$MarketTradeGoodsImpl.fromJson;

  @override
  String get symbol;
  @override
  String get type;
  @override
  int get tradeVolume;
  @override
  String get supply;
  @override
  String get activity;
  @override
  int get purchasePrice;
  @override
  int get sellPrice;

  /// Create a copy of MarketTradeGoods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketTradeGoodsImplCopyWith<_$MarketTradeGoodsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
