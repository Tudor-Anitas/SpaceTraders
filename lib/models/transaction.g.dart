// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      waypointSymbol: json['waypointSymbol'] as String? ?? '',
      shipSymbol: json['shipSymbol'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
      agentSymbol: json['agentSymbol'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'waypointSymbol': instance.waypointSymbol,
      'shipSymbol': instance.shipSymbol,
      'price': instance.price,
      'agentSymbol': instance.agentSymbol,
      'timestamp': instance.timestamp,
    };
