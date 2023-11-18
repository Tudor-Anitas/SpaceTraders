import 'dart:convert';

import 'package:equatable/equatable.dart';

class Cargo extends Equatable {
  final String tradeSymbol;
  final String destinationSymbol;
  final int unitsRequired;
  final int unitsFulfilled;

  const Cargo({
    required this.tradeSymbol,
    required this.destinationSymbol,
    required this.unitsRequired,
    required this.unitsFulfilled,
  });

  Cargo copyWith({
    String? tradeSymbol,
    String? destinationSymbol,
    int? unitsRequired,
    int? unitsFulfilled,
  }) {
    return Cargo(
      tradeSymbol: tradeSymbol ?? this.tradeSymbol,
      destinationSymbol: destinationSymbol ?? this.destinationSymbol,
      unitsRequired: unitsRequired ?? this.unitsRequired,
      unitsFulfilled: unitsFulfilled ?? this.unitsFulfilled,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tradeSymbol': tradeSymbol,
      'destinationSymbol': destinationSymbol,
      'unitsRequired': unitsRequired,
      'unitsFulfilled': unitsFulfilled,
    };
  }

  factory Cargo.fromMap(Map<String, dynamic> map) {
    return Cargo(
      tradeSymbol: map['tradeSymbol'] ?? '',
      destinationSymbol: map['destinationSymbol'] ?? '',
      unitsRequired: map['unitsRequired']?.toInt() ?? 0,
      unitsFulfilled: map['unitsFulfilled']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cargo.fromJson(String source) => Cargo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'tradeSymbol: $tradeSymbol\ndestinationSymbol: $destinationSymbol\nunitsRequired: $unitsRequired\nunitsFulfilled: $unitsFulfilled';
  }

  @override
  List<Object> get props =>
      [tradeSymbol, destinationSymbol, unitsRequired, unitsFulfilled];
}
