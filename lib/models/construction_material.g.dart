// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'construction_material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConstructionMaterialImpl _$$ConstructionMaterialImplFromJson(
        Map<String, dynamic> json) =>
    _$ConstructionMaterialImpl(
      tradeSymbol: json['tradeSymbol'] as String? ?? '',
      requiredUnits: (json['requiredUnits'] as num?)?.toInt() ?? 0,
      fulfilled: (json['fulfilled'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ConstructionMaterialImplToJson(
        _$ConstructionMaterialImpl instance) =>
    <String, dynamic>{
      'tradeSymbol': instance.tradeSymbol,
      'requiredUnits': instance.requiredUnits,
      'fulfilled': instance.fulfilled,
    };
