import 'dart:convert';

import 'package:equatable/equatable.dart';

class ExtractionYield extends Equatable {
  final String symbol;
  final int units;
  const ExtractionYield({
    required this.symbol,
    required this.units,
  });

  ExtractionYield copyWith({
    String? symbol,
    int? units,
  }) {
    return ExtractionYield(
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

  factory ExtractionYield.fromMap(Map<String, dynamic> map) {
    return ExtractionYield(
      symbol: map['symbol'] ?? '',
      units: map['units']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExtractionYield.fromJson(String source) =>
      ExtractionYield.fromMap(json.decode(source));

  @override
  String toString() => 'ExtractionYield(symbol: $symbol, units: $units)';

  @override
  List<Object> get props => [symbol, units];
}
