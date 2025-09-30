// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScannedWaypointImpl _$$ScannedWaypointImplFromJson(
        Map<String, dynamic> json) =>
    _$ScannedWaypointImpl(
      symbol: json['symbol'] as String,
      type: json['type'] as String,
      systemSymbol: json['systemSymbol'] as String,
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
      orbitals: (json['orbitals'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      faction: json['faction'] as String?,
      traits: json['traits'] as Map<String, dynamic>?,
      chart: json['chart'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ScannedWaypointImplToJson(
        _$ScannedWaypointImpl instance) =>
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
