// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooldown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CooldownImpl _$$CooldownImplFromJson(Map<String, dynamic> json) =>
    _$CooldownImpl(
      shipSymbol: json['shipSymbol'] as String? ?? '',
      totalSeconds: (json['totalSeconds'] as num?)?.toInt() ?? 0,
      remainingSeconds: (json['remainingSeconds'] as num?)?.toInt() ?? 0,
      expiration: json['expiration'] as String? ?? '',
    );

Map<String, dynamic> _$$CooldownImplToJson(_$CooldownImpl instance) =>
    <String, dynamic>{
      'shipSymbol': instance.shipSymbol,
      'totalSeconds': instance.totalSeconds,
      'remainingSeconds': instance.remainingSeconds,
      'expiration': instance.expiration,
    };
