// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EngineImpl _$$EngineImplFromJson(Map<String, dynamic> json) => _$EngineImpl(
      symbol: json['symbol'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      condition: (json['condition'] as num?)?.toInt() ?? 0,
      integrity: (json['integrity'] as num?)?.toInt() ?? 0,
      speed: (json['speed'] as num?)?.toInt() ?? 0,
      requirements: json['requirements'] == null
          ? const Requirements()
          : Requirements.fromJson(json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EngineImplToJson(_$EngineImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
      'condition': instance.condition,
      'integrity': instance.integrity,
      'speed': instance.speed,
      'requirements': instance.requirements,
    };
