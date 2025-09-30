// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipyard_ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipyardShipImpl _$$ShipyardShipImplFromJson(Map<String, dynamic> json) =>
    _$ShipyardShipImpl(
      type: json['type'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      purchasePrice: (json['purchasePrice'] as num).toInt(),
      frame: Frame.fromJson(json['frame'] as Map<String, dynamic>),
      reactor: Reactor.fromJson(json['reactor'] as Map<String, dynamic>),
      engine: Engine.fromJson(json['engine'] as Map<String, dynamic>),
      modules: (json['modules'] as List<dynamic>?)
              ?.map((e) => Module.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      mounts: (json['mounts'] as List<dynamic>?)
              ?.map((e) => Mount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ShipyardShipImplToJson(_$ShipyardShipImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'purchasePrice': instance.purchasePrice,
      'frame': instance.frame,
      'reactor': instance.reactor,
      'engine': instance.engine,
      'modules': instance.modules,
      'mounts': instance.mounts,
    };
