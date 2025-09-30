// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
      origin: Origin.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          Destination.fromJson(json['destination'] as Map<String, dynamic>),
      departureTime: json['departureTime'] as String,
      arrival: json['arrival'] as String,
    );

Map<String, dynamic> _$$RouteImplToJson(_$RouteImpl instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'departureTime': instance.departureTime,
      'arrival': instance.arrival,
    };
