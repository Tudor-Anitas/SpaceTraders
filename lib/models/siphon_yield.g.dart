// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siphon_yield.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiphonYieldImpl _$$SiphonYieldImplFromJson(Map<String, dynamic> json) =>
    _$SiphonYieldImpl(
      symbol: json['symbol'] as String? ?? '',
      units: (json['units'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SiphonYieldImplToJson(_$SiphonYieldImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'units': instance.units,
    };
