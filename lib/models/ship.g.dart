// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipImpl _$$ShipImplFromJson(Map<String, dynamic> json) => _$ShipImpl(
      symbol: json['symbol'] as String? ?? '',
      registration: json['registration'] == null
          ? const Registration()
          : Registration.fromJson(json['registration'] as Map<String, dynamic>),
      nav: ShipNav.fromJson(json['nav'] as Map<String, dynamic>),
      crew: json['crew'] == null
          ? const Crew()
          : Crew.fromJson(json['crew'] as Map<String, dynamic>),
      frame: json['frame'] == null
          ? const Frame()
          : Frame.fromJson(json['frame'] as Map<String, dynamic>),
      reactor: json['reactor'] == null
          ? const Reactor()
          : Reactor.fromJson(json['reactor'] as Map<String, dynamic>),
      engine: json['engine'] == null
          ? const Engine()
          : Engine.fromJson(json['engine'] as Map<String, dynamic>),
      cooldown: json['cooldown'] == null
          ? const Cooldown()
          : Cooldown.fromJson(json['cooldown'] as Map<String, dynamic>),
      modules: (json['modules'] as List<dynamic>?)
              ?.map((e) => Module.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      mounts: (json['mounts'] as List<dynamic>?)
              ?.map((e) => Mount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cargo: json['cargo'] == null
          ? const ShipCargo()
          : ShipCargo.fromJson(json['cargo'] as Map<String, dynamic>),
      fuel: json['fuel'] == null
          ? const Fuel()
          : Fuel.fromJson(json['fuel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShipImplToJson(_$ShipImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'registration': instance.registration,
      'nav': instance.nav,
      'crew': instance.crew,
      'frame': instance.frame,
      'reactor': instance.reactor,
      'engine': instance.engine,
      'cooldown': instance.cooldown,
      'modules': instance.modules,
      'mounts': instance.mounts,
      'cargo': instance.cargo,
      'fuel': instance.fuel,
    };
