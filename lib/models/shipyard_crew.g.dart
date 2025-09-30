// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipyard_crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipyardCrewImpl _$$ShipyardCrewImplFromJson(Map<String, dynamic> json) =>
    _$ShipyardCrewImpl(
      requiredCrew: (json['requiredCrew'] as num?)?.toInt() ?? 0,
      capacity: (json['capacity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ShipyardCrewImplToJson(_$ShipyardCrewImpl instance) =>
    <String, dynamic>{
      'requiredCrew': instance.requiredCrew,
      'capacity': instance.capacity,
    };
