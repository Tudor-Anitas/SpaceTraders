// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipyard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipyardImpl _$$ShipyardImplFromJson(Map<String, dynamic> json) =>
    _$ShipyardImpl(
      symbol: json['symbol'] as String,
      ships: (json['ships'] as List<dynamic>?)
              ?.map((e) => ShipyardShip.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shipTypes: (json['shipTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      transactions: json['transactions'] as Map<String, dynamic>? ?? const {},
      factionSymbol: json['factionSymbol'] as String?,
    );

Map<String, dynamic> _$$ShipyardImplToJson(_$ShipyardImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'ships': instance.ships,
      'shipTypes': instance.shipTypes,
      'transactions': instance.transactions,
      'factionSymbol': instance.factionSymbol,
    };
