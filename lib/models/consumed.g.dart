// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsumedImpl _$$ConsumedImplFromJson(Map<String, dynamic> json) =>
    _$ConsumedImpl(
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      timestamp: json['timestamp'] as String? ?? '',
    );

Map<String, dynamic> _$$ConsumedImplToJson(_$ConsumedImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'timestamp': instance.timestamp,
    };
