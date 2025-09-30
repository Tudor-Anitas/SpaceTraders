// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentImpl _$$AgentImplFromJson(Map<String, dynamic> json) => _$AgentImpl(
      accountId: json['accountId'] as String? ?? '',
      symbol: json['symbol'] as String? ?? '',
      headquarters: json['headquarters'] as String? ?? '',
      credits: (json['credits'] as num?)?.toInt() ?? 0,
      startingFaction: json['startingFaction'] as String? ?? '',
      shipCount: (json['shipCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AgentImplToJson(_$AgentImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'symbol': instance.symbol,
      'headquarters': instance.headquarters,
      'credits': instance.credits,
      'startingFaction': instance.startingFaction,
      'shipCount': instance.shipCount,
    };
