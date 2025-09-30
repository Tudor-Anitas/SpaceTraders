// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketTransactionImpl _$$MarketTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketTransactionImpl(
      waypointSymbol: json['waypointSymbol'] as String? ?? '',
      shipSymbol: json['shipSymbol'] as String? ?? '',
      tradeSymbol: json['tradeSymbol'] as String? ?? '',
      type: json['type'] as String? ?? '',
      units: (json['units'] as num?)?.toInt() ?? 0,
      pricePerUnit: (json['pricePerUnit'] as num?)?.toInt() ?? 0,
      totalPrice: (json['totalPrice'] as num?)?.toInt() ?? 0,
      timestamp: json['timestamp'] as String? ?? '',
    );

Map<String, dynamic> _$$MarketTransactionImplToJson(
        _$MarketTransactionImpl instance) =>
    <String, dynamic>{
      'waypointSymbol': instance.waypointSymbol,
      'shipSymbol': instance.shipSymbol,
      'tradeSymbol': instance.tradeSymbol,
      'type': instance.type,
      'units': instance.units,
      'pricePerUnit': instance.pricePerUnit,
      'totalPrice': instance.totalPrice,
      'timestamp': instance.timestamp,
    };
