// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_deliver_good.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractDeliverGoodImpl _$$ContractDeliverGoodImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractDeliverGoodImpl(
      tradeSymbol: json['tradeSymbol'] as String? ?? '',
      destinationSymbol: json['destinationSymbol'] as String? ?? '',
      unitsRequired: (json['unitsRequired'] as num?)?.toInt() ?? 0,
      unitsFulfilled: (json['unitsFulfilled'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ContractDeliverGoodImplToJson(
        _$ContractDeliverGoodImpl instance) =>
    <String, dynamic>{
      'tradeSymbol': instance.tradeSymbol,
      'destinationSymbol': instance.destinationSymbol,
      'unitsRequired': instance.unitsRequired,
      'unitsFulfilled': instance.unitsFulfilled,
    };
