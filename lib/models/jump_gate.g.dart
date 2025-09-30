// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jump_gate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JumpGateImpl _$$JumpGateImplFromJson(Map<String, dynamic> json) =>
    _$JumpGateImpl(
      connections: (json['connections'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$JumpGateImplToJson(_$JumpGateImpl instance) =>
    <String, dynamic>{
      'connections': instance.connections,
    };
