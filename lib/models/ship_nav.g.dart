// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship_nav.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipNavImpl _$$ShipNavImplFromJson(Map<String, dynamic> json) =>
    _$ShipNavImpl(
      systemSymbol: json['systemSymbol'] as String,
      waypointSymbol: json['waypointSymbol'] as String,
      route: Route.fromJson(json['route'] as Map<String, dynamic>),
      status: json['status'] as String,
      flightMode: json['flightMode'] as String,
    );

Map<String, dynamic> _$$ShipNavImplToJson(_$ShipNavImpl instance) =>
    <String, dynamic>{
      'systemSymbol': instance.systemSymbol,
      'waypointSymbol': instance.waypointSymbol,
      'route': instance.route,
      'status': instance.status,
      'flightMode': instance.flightMode,
    };
