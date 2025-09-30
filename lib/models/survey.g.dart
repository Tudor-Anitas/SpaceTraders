// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyImpl _$$SurveyImplFromJson(Map<String, dynamic> json) => _$SurveyImpl(
      signature: json['signature'] as String? ?? '',
      symbol: json['symbol'] as String? ?? '',
      deposits: (json['deposits'] as List<dynamic>?)
              ?.map((e) => SurveyDeposit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      expiration: json['expiration'] as String? ?? '',
      size: json['size'] as String? ?? '',
    );

Map<String, dynamic> _$$SurveyImplToJson(_$SurveyImpl instance) =>
    <String, dynamic>{
      'signature': instance.signature,
      'symbol': instance.symbol,
      'deposits': instance.deposits,
      'expiration': instance.expiration,
      'size': instance.size,
    };
