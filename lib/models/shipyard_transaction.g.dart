// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipyard_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipyardTransactionImpl _$$ShipyardTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipyardTransactionImpl(
      waypointSymbol: json['waypointSymbol'] as String? ?? '',
      shipSymbol: json['shipSymbol'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
      agentSymbol: json['agentSymbol'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
    );

Map<String, dynamic> _$$ShipyardTransactionImplToJson(
        _$ShipyardTransactionImpl instance) =>
    <String, dynamic>{
      'waypointSymbol': instance.waypointSymbol,
      'shipSymbol': instance.shipSymbol,
      'price': instance.price,
      'agentSymbol': instance.agentSymbol,
      'timestamp': instance.timestamp,
    };
