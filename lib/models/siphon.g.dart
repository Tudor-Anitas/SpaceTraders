// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siphon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiphonImpl _$$SiphonImplFromJson(Map<String, dynamic> json) => _$SiphonImpl(
      shipSymbol: json['shipSymbol'] as String? ?? '',
      siphonYield: json['siphonYield'] == null
          ? const SiphonYield()
          : SiphonYield.fromJson(json['siphonYield'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SiphonImplToJson(_$SiphonImpl instance) =>
    <String, dynamic>{
      'shipSymbol': instance.shipSymbol,
      'siphonYield': instance.siphonYield,
    };
