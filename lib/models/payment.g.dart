// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      onAccepted: (json['onAccepted'] as num?)?.toInt() ?? 0,
      onFulfilled: (json['onFulfilled'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'onAccepted': instance.onAccepted,
      'onFulfilled': instance.onFulfilled,
    };
