// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScannedSystemImpl _$$ScannedSystemImplFromJson(Map<String, dynamic> json) =>
    _$ScannedSystemImpl(
      symbol: json['symbol'] as String,
      sectorSymbol: json['sectorSymbol'] as String,
      type: json['type'] as String,
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
      distance: (json['distance'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ScannedSystemImplToJson(_$ScannedSystemImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'sectorSymbol': instance.sectorSymbol,
      'type': instance.type,
      'x': instance.x,
      'y': instance.y,
      'distance': instance.distance,
    };
