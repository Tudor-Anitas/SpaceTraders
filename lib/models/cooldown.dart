import 'dart:convert';

import 'package:equatable/equatable.dart';

class Cooldown extends Equatable {
  final String shipSymbol;
  final int totalSeconds;
  final int remainingSeconds;
  final String expiration;
  const Cooldown({
    required this.shipSymbol,
    required this.totalSeconds,
    required this.remainingSeconds,
    required this.expiration,
  });

  Cooldown copyWith({
    String? shipSymbol,
    int? totalSeconds,
    int? remainingSeconds,
    String? expiration,
  }) {
    return Cooldown(
      shipSymbol: shipSymbol ?? this.shipSymbol,
      totalSeconds: totalSeconds ?? this.totalSeconds,
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
      expiration: expiration ?? this.expiration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'shipSymbol': shipSymbol,
      'totalSeconds': totalSeconds,
      'remainingSeconds': remainingSeconds,
      'expiration': expiration,
    };
  }

  factory Cooldown.fromMap(Map<String, dynamic> map) {
    return Cooldown(
      shipSymbol: map['shipSymbol'] ?? '',
      totalSeconds: map['totalSeconds']?.toInt() ?? 0,
      remainingSeconds: map['remainingSeconds']?.toInt() ?? 0,
      expiration: map['expiration'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cooldown.fromJson(String source) =>
      Cooldown.fromMap(json.decode(source));

  @override
  String toString() {
    return 'shipSymbol: $shipSymbol\ntotalSeconds: $totalSeconds\nremainingSeconds: $remainingSeconds\nexpiration: $expiration';
  }

  @override
  List<Object> get props =>
      [shipSymbol, totalSeconds, remainingSeconds, expiration];
}
