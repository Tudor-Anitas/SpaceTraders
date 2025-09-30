// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'construction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConstructionImpl _$$ConstructionImplFromJson(Map<String, dynamic> json) =>
    _$ConstructionImpl(
      isComplete: json['isComplete'] as bool,
      materials: (json['materials'] as List<dynamic>?)
              ?.map((e) =>
                  ConstructionMaterial.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ConstructionImplToJson(_$ConstructionImpl instance) =>
    <String, dynamic>{
      'isComplete': instance.isComplete,
      'materials': instance.materials,
    };
