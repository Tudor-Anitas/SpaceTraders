// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refining_goods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefiningGoodsImpl _$$RefiningGoodsImplFromJson(Map<String, dynamic> json) =>
    _$RefiningGoodsImpl(
      tradeSymbol: json['tradeSymbol'] as String? ?? '',
      units: (json['units'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RefiningGoodsImplToJson(_$RefiningGoodsImpl instance) =>
    <String, dynamic>{
      'tradeSymbol': instance.tradeSymbol,
      'units': instance.units,
    };
