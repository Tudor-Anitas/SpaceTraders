// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_trade_goods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketTradeGoodsImpl _$$MarketTradeGoodsImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketTradeGoodsImpl(
      symbol: json['symbol'] as String? ?? '',
      type: json['type'] as String? ?? '',
      tradeVolume: (json['tradeVolume'] as num?)?.toInt() ?? 0,
      supply: json['supply'] as String? ?? '',
      activity: json['activity'] as String? ?? '',
      purchasePrice: (json['purchasePrice'] as num?)?.toInt() ?? 0,
      sellPrice: (json['sellPrice'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MarketTradeGoodsImplToJson(
        _$MarketTradeGoodsImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'type': instance.type,
      'tradeVolume': instance.tradeVolume,
      'supply': instance.supply,
      'activity': instance.activity,
      'purchasePrice': instance.purchasePrice,
      'sellPrice': instance.sellPrice,
    };
