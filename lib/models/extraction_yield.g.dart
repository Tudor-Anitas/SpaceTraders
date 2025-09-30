// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extraction_yield.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtractionYieldImpl _$$ExtractionYieldImplFromJson(
        Map<String, dynamic> json) =>
    _$ExtractionYieldImpl(
      symbol: json['symbol'] as String? ?? '',
      units: (json['units'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ExtractionYieldImplToJson(
        _$ExtractionYieldImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'units': instance.units,
    };
