// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermsImpl _$$TermsImplFromJson(Map<String, dynamic> json) => _$TermsImpl(
      deadline: DateTime.parse(json['deadline'] as String),
      payment: json['payment'] == null
          ? const Payment()
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      deliver: (json['deliver'] as List<dynamic>?)
              ?.map((e) =>
                  ContractDeliverGood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TermsImplToJson(_$TermsImpl instance) =>
    <String, dynamic>{
      'deadline': instance.deadline.toIso8601String(),
      'payment': instance.payment,
      'deliver': instance.deliver,
    };
