// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship_cargo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipCargoImpl _$$ShipCargoImplFromJson(Map<String, dynamic> json) =>
    _$ShipCargoImpl(
      capacity: (json['capacity'] as num?)?.toInt() ?? 0,
      units: (json['units'] as num?)?.toInt() ?? 0,
      inventory: (json['inventory'] as List<dynamic>?)
              ?.map((e) => Inventory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ShipCargoImplToJson(_$ShipCargoImpl instance) =>
    <String, dynamic>{
      'capacity': instance.capacity,
      'units': instance.units,
      'inventory': instance.inventory,
    };
