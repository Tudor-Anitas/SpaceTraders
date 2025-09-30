// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registrations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationImpl _$$RegistrationImplFromJson(Map<String, dynamic> json) =>
    _$RegistrationImpl(
      name: json['name'] as String? ?? '',
      factionSymbol: json['factionSymbol'] as String? ?? '',
      role: json['role'] as String? ?? '',
    );

Map<String, dynamic> _$$RegistrationImplToJson(_$RegistrationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'factionSymbol': instance.factionSymbol,
      'role': instance.role,
    };
