// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FactionImpl _$$FactionImplFromJson(Map<String, dynamic> json) =>
    _$FactionImpl(
      symbol: json['symbol'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      headquarters: json['headquarters'] as String? ?? '',
      traits: (json['traits'] as List<dynamic>?)
              ?.map((e) => FactionTrait.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isRecruiting: json['isRecruiting'] as bool? ?? false,
    );

Map<String, dynamic> _$$FactionImplToJson(_$FactionImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
      'headquarters': instance.headquarters,
      'traits': instance.traits,
      'isRecruiting': instance.isRecruiting,
    };
