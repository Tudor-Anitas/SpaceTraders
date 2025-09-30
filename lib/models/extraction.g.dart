// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extraction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtractionImpl _$$ExtractionImplFromJson(Map<String, dynamic> json) =>
    _$ExtractionImpl(
      shipSymbol: json['shipSymbol'] as String? ?? '',
      extractionYield: json['extractionYield'] == null
          ? const ExtractionYield()
          : ExtractionYield.fromJson(
              json['extractionYield'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExtractionImplToJson(_$ExtractionImpl instance) =>
    <String, dynamic>{
      'shipSymbol': instance.shipSymbol,
      'extractionYield': instance.extractionYield,
    };
