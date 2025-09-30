// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryImpl _$$InventoryImplFromJson(Map<String, dynamic> json) =>
    _$InventoryImpl(
      symbol: json['symbol'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      units: (json['units'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$InventoryImplToJson(_$InventoryImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
      'units': instance.units,
    };
