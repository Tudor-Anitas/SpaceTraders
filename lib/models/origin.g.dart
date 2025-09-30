// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'origin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OriginImpl _$$OriginImplFromJson(Map<String, dynamic> json) => _$OriginImpl(
      symbol: json['symbol'] as String? ?? '',
      type: json['type'] as String? ?? '',
      systemSymbol: json['systemSymbol'] as String? ?? '',
      x: (json['x'] as num?)?.toInt() ?? 0,
      y: (json['y'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$OriginImplToJson(_$OriginImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'type': instance.type,
      'systemSymbol': instance.systemSymbol,
      'x': instance.x,
      'y': instance.y,
    };
