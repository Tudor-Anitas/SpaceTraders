// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FuelImpl _$$FuelImplFromJson(Map<String, dynamic> json) => _$FuelImpl(
      current: (json['current'] as num?)?.toInt() ?? 0,
      capacity: (json['capacity'] as num?)?.toInt() ?? 0,
      consumed: json['consumed'] == null
          ? const Consumed()
          : Consumed.fromJson(json['consumed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FuelImplToJson(_$FuelImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'capacity': instance.capacity,
      'consumed': instance.consumed,
    };
