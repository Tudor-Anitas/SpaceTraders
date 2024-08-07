// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Agent extends Equatable {
  final String accountId;
  final String symbol;
  final String headquarters;
  final int credits;
  final String startingFaction;
  final int shipCount;
  const Agent({
    required this.accountId,
    required this.symbol,
    required this.headquarters,
    required this.credits,
    required this.startingFaction,
    required this.shipCount,
  });

  factory Agent.empty() {
    return Agent.fromMap(const {});
  }

  Agent copyWith({
    String? accountId,
    String? symbol,
    String? headquarters,
    int? credits,
    String? startingFaction,
    int? shipCount,
  }) {
    return Agent(
      accountId: accountId ?? this.accountId,
      symbol: symbol ?? this.symbol,
      headquarters: headquarters ?? this.headquarters,
      credits: credits ?? this.credits,
      startingFaction: startingFaction ?? this.startingFaction,
      shipCount: shipCount ?? this.shipCount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'symbol': symbol,
      'headquarters': headquarters,
      'credits': credits,
      'startingFaction': startingFaction,
      'shipCount': shipCount,
    };
  }

  factory Agent.fromMap(Map<String, dynamic> map) {
    return Agent(
      accountId: map['accountId'] ?? '' ,
      symbol: map['symbol'] ?? '',
      headquarters: map['headquarters'] ?? '',
      credits: map['credits'] ?? 0,
      startingFaction: map['startingFaction'] ?? '',
      shipCount: map['shipCount'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Agent.fromJson(String source) =>
      Agent.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      accountId,
      symbol,
      headquarters,
      credits,
      startingFaction,
      shipCount,
    ];
  }
}
