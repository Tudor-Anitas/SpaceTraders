// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WaypointImpl _$$WaypointImplFromJson(Map<String, dynamic> json) =>
    _$WaypointImpl(
      symbol: json['symbol'] as String,
      type: json['type'] as String,
      systemSymbol: json['systemSymbol'] as String,
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
      orbitals: (json['orbitals'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      faction: json['faction'] == null
          ? null
          : Faction.fromJson(json['faction'] as Map<String, dynamic>),
      traits: (json['traits'] as List<dynamic>?)
              ?.map((e) => WaypointTrait.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      chart: json['chart'] == null
          ? null
          : Chart.fromJson(json['chart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WaypointImplToJson(_$WaypointImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'type': instance.type,
      'systemSymbol': instance.systemSymbol,
      'x': instance.x,
      'y': instance.y,
      'orbitals': instance.orbitals,
      'faction': instance.faction,
      'traits': instance.traits,
      'chart': instance.chart,
    };
