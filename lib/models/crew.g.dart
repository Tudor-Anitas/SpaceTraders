// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrewImpl _$$CrewImplFromJson(Map<String, dynamic> json) => _$CrewImpl(
      current: (json['current'] as num?)?.toInt() ?? 0,
      requiredCrew: (json['requiredCrew'] as num?)?.toInt() ?? 0,
      capacity: (json['capacity'] as num?)?.toInt() ?? 0,
      rotation: json['rotation'] as String? ?? '',
      morale: (json['morale'] as num?)?.toInt() ?? 0,
      wages: (json['wages'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CrewImplToJson(_$CrewImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'requiredCrew': instance.requiredCrew,
      'capacity': instance.capacity,
      'rotation': instance.rotation,
      'morale': instance.morale,
      'wages': instance.wages,
    };
