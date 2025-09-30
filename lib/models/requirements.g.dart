// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequirementsImpl _$$RequirementsImplFromJson(Map<String, dynamic> json) =>
    _$RequirementsImpl(
      power: (json['power'] as num?)?.toInt() ?? 0,
      crew: (json['crew'] as num?)?.toInt() ?? 0,
      slots: (json['slots'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RequirementsImplToJson(_$RequirementsImpl instance) =>
    <String, dynamic>{
      'power': instance.power,
      'crew': instance.crew,
      'slots': instance.slots,
    };
