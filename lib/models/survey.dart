import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/survey_deposit.dart';

class Survey extends Equatable {
  final String signature;
  final String symbol;
  final List<SurveyDeposit> deposits;
  final String expiration;
  final String size;
  const Survey({
    required this.signature,
    required this.symbol,
    required this.deposits,
    required this.expiration,
    required this.size,
  });

  Survey copyWith({
    String? signature,
    String? symbol,
    List<SurveyDeposit>? deposits,
    String? expiration,
    String? size,
  }) {
    return Survey(
      signature: signature ?? this.signature,
      symbol: symbol ?? this.symbol,
      deposits: deposits ?? this.deposits,
      expiration: expiration ?? this.expiration,
      size: size ?? this.size,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'signature': signature,
      'symbol': symbol,
      'deposits': deposits.map((x) => x.toMap()).toList(),
      'expiration': expiration,
      'size': size,
    };
  }

  factory Survey.fromMap(Map<String, dynamic> map) {
    return Survey(
      signature: map['signature'] ?? '',
      symbol: map['symbol'] ?? '',
      deposits: List<SurveyDeposit>.from(
          map['deposits']?.map((x) => SurveyDeposit.fromMap(x))),
      expiration: map['expiration'] ?? '',
      size: map['size'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Survey.fromJson(String source) => Survey.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Survey(signature: $signature, symbol: $symbol, deposits: $deposits, expiration: $expiration, size: $size)';
  }

  @override
  List<Object> get props {
    return [
      signature,
      symbol,
      deposits,
      expiration,
      size,
    ];
  }
}
