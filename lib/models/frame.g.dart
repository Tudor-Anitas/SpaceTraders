// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FrameImpl _$$FrameImplFromJson(Map<String, dynamic> json) => _$FrameImpl(
      symbol: json['symbol'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      condition: (json['condition'] as num?)?.toDouble() ?? 0.0,
      integrity: (json['integrity'] as num?)?.toDouble() ?? 0.0,
      moduleSlots: (json['moduleSlots'] as num?)?.toInt() ?? 0,
      mountingPoints: (json['mountingPoints'] as num?)?.toInt() ?? 0,
      fuelCapacity: (json['fuelCapacity'] as num?)?.toInt() ?? 0,
      requirements: json['requirements'] == null
          ? const Requirements()
          : Requirements.fromJson(json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FrameImplToJson(_$FrameImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
      'condition': instance.condition,
      'integrity': instance.integrity,
      'moduleSlots': instance.moduleSlots,
      'mountingPoints': instance.mountingPoints,
      'fuelCapacity': instance.fuelCapacity,
      'requirements': instance.requirements,
    };
