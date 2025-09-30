// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleImpl _$$ModuleImplFromJson(Map<String, dynamic> json) => _$ModuleImpl(
      symbol: json['symbol'] as String? ?? '',
      capacity: (json['capacity'] as num?)?.toInt() ?? 0,
      range: (json['range'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      requirements: json['requirements'] == null
          ? const Requirements()
          : Requirements.fromJson(json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModuleImplToJson(_$ModuleImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'capacity': instance.capacity,
      'range': instance.range,
      'name': instance.name,
      'description': instance.description,
      'requirements': instance.requirements,
    };
