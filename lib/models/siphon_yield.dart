import 'dart:convert';

import 'package:equatable/equatable.dart';

class SiphonYield extends Equatable {
  final String symbol;
  final int units;
  const SiphonYield({
    required this.symbol,
    required this.units,
  });

  SiphonYield copyWith({
    String? symbol,
    int? units,
  }) {
    return SiphonYield(
      symbol: symbol ?? this.symbol,
      units: units ?? this.units,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'units': units,
    };
  }

  factory SiphonYield.fromMap(Map<String, dynamic> map) {
    return SiphonYield(
      symbol: map['symbol'] ?? '',
      units: map['units']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory SiphonYield.fromJson(String source) =>
      SiphonYield.fromMap(json.decode(source));

  @override
  String toString() => 'SiphonYield(symbol: $symbol, units: $units)';

  @override
  List<Object> get props => [symbol, units];
}
