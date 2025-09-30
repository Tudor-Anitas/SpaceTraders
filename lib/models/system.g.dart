// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemImpl _$$SystemImplFromJson(Map<String, dynamic> json) => _$SystemImpl(
      symbol: json['symbol'] as String,
      sectorSymbol: json['sectorSymbol'] as String,
      type: json['type'] as String,
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
      waypoints: (json['waypoints'] as List<dynamic>?)
              ?.map((e) => Waypoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      factions: (json['factions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SystemImplToJson(_$SystemImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'sectorSymbol': instance.sectorSymbol,
      'type': instance.type,
      'x': instance.x,
      'y': instance.y,
      'waypoints': instance.waypoints,
      'factions': instance.factions,
    };
