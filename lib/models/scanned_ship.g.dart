// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScannedShipImpl _$$ScannedShipImplFromJson(Map<String, dynamic> json) =>
    _$ScannedShipImpl(
      symbol: json['symbol'] as String,
      registration:
          Registration.fromJson(json['registration'] as Map<String, dynamic>),
      nav: ShipNav.fromJson(json['nav'] as Map<String, dynamic>),
      frame: Frame.fromJson(json['frame'] as Map<String, dynamic>),
      reactor: Reactor.fromJson(json['reactor'] as Map<String, dynamic>),
      engine: Engine.fromJson(json['engine'] as Map<String, dynamic>),
      mounts: (json['mounts'] as List<dynamic>?)
              ?.map((e) => Mount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ScannedShipImplToJson(_$ScannedShipImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'registration': instance.registration,
      'nav': instance.nav,
      'frame': instance.frame,
      'reactor': instance.reactor,
      'engine': instance.engine,
      'mounts': instance.mounts,
    };
