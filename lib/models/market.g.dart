// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketImpl _$$MarketImplFromJson(Map<String, dynamic> json) => _$MarketImpl(
      symbol: json['symbol'] as String,
      tradeGoods: (json['tradeGoods'] as List<dynamic>?)
              ?.map((e) => MarketTradeGoods.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => Exchange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      imports: (json['imports'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      exports: (json['exports'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      exchange: (json['exchange'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MarketImplToJson(_$MarketImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'tradeGoods': instance.tradeGoods,
      'transactions': instance.transactions,
      'imports': instance.imports,
      'exports': instance.exports,
      'exchange': instance.exchange,
    };
