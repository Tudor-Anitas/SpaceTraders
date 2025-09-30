// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationImpl _$$DestinationImplFromJson(Map<String, dynamic> json) =>
    _$DestinationImpl(
      symbol: json['symbol'] as String? ?? '',
      type: json['type'] as String? ?? '',
      systemSymbol: json['systemSymbol'] as String? ?? '',
      x: (json['x'] as num?)?.toInt() ?? 0,
      y: (json['y'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DestinationImplToJson(_$DestinationImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'type': instance.type,
      'systemSymbol': instance.systemSymbol,
      'x': instance.x,
      'y': instance.y,
    };
