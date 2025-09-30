// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MountImpl _$$MountImplFromJson(Map<String, dynamic> json) => _$MountImpl(
      symbol: json['symbol'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      strength: (json['strength'] as num?)?.toInt() ?? 0,
      deposits: (json['deposits'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      requirements: json['requirements'] == null
          ? const Requirements()
          : Requirements.fromJson(json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MountImplToJson(_$MountImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
      'strength': instance.strength,
      'deposits': instance.deposits,
      'requirements': instance.requirements,
    };
