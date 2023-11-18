import 'dart:convert';

import 'package:equatable/equatable.dart';

class RefiningGoods extends Equatable {
  final String tradeSymbol;
  final int units;
  const RefiningGoods({
    required this.tradeSymbol,
    required this.units,
  });

  RefiningGoods copyWith({
    String? tradeSymbol,
    int? units,
  }) {
    return RefiningGoods(
      tradeSymbol: tradeSymbol ?? this.tradeSymbol,
      units: units ?? this.units,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tradeSymbol': tradeSymbol,
      'units': units,
    };
  }

  factory RefiningGoods.fromMap(Map<String, dynamic> map) {
    return RefiningGoods(
      tradeSymbol: map['tradeSymbol'] ?? '',
      units: map['units']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory RefiningGoods.fromJson(String source) =>
      RefiningGoods.fromMap(json.decode(source));

  @override
  String toString() =>
      'RefiningGoods(tradeSymbol: $tradeSymbol, units: $units)';

  @override
  List<Object> get props => [tradeSymbol, units];
}
