// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeImpl _$$ExchangeImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeImpl(
      symbol: json['symbol'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$ExchangeImplToJson(_$ExchangeImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
    };
