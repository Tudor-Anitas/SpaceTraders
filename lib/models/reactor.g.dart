// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reactor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactorImpl _$$ReactorImplFromJson(Map<String, dynamic> json) =>
    _$ReactorImpl(
      symbol: json['symbol'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      condition: (json['condition'] as num?)?.toInt() ?? 0,
      integrity: (json['integrity'] as num?)?.toInt() ?? 0,
      powerOutput: (json['powerOutput'] as num?)?.toInt() ?? 0,
      requirements: json['requirements'] == null
          ? const Requirements()
          : Requirements.fromJson(json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReactorImplToJson(_$ReactorImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
      'condition': instance.condition,
      'integrity': instance.integrity,
      'powerOutput': instance.powerOutput,
      'requirements': instance.requirements,
    };
