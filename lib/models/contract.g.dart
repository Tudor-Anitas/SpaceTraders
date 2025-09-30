// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractImpl _$$ContractImplFromJson(Map<String, dynamic> json) =>
    _$ContractImpl(
      id: json['id'] as String? ?? '',
      factionSymbol: json['factionSymbol'] as String? ?? '',
      type: json['type'] as String? ?? '',
      terms: Terms.fromJson(json['terms'] as Map<String, dynamic>),
      accepted: json['accepted'] as bool? ?? false,
      fulfilled: json['fulfilled'] as bool? ?? false,
      expiration: DateTime.parse(json['expiration'] as String),
      deadlineToAccept: DateTime.parse(json['deadlineToAccept'] as String),
    );

Map<String, dynamic> _$$ContractImplToJson(_$ContractImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'factionSymbol': instance.factionSymbol,
      'type': instance.type,
      'terms': instance.terms,
      'accepted': instance.accepted,
      'fulfilled': instance.fulfilled,
      'expiration': instance.expiration.toIso8601String(),
      'deadlineToAccept': instance.deadlineToAccept.toIso8601String(),
    };
