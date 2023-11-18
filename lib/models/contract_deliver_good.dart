import 'dart:convert';

import 'package:equatable/equatable.dart';

class ContractDeliverGood extends Equatable {
  final String tradeSymbol;
  final String destinationSymbol;
  final int unitsRequired;
  final int unitsFulfilled;

  const ContractDeliverGood({
    required this.tradeSymbol,
    required this.destinationSymbol,
    required this.unitsRequired,
    required this.unitsFulfilled,
  });

  ContractDeliverGood copyWith({
    String? tradeSymbol,
    String? destinationSymbol,
    int? unitsRequired,
    int? unitsFulfilled,
  }) {
    return ContractDeliverGood(
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

  factory ContractDeliverGood.fromMap(Map<String, dynamic> map) {
    return ContractDeliverGood(
      tradeSymbol: map['tradeSymbol'] ?? '',
      destinationSymbol: map['destinationSymbol'] ?? '',
      unitsRequired: map['unitsRequired']?.toInt() ?? 0,
      unitsFulfilled: map['unitsFulfilled']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContractDeliverGood.fromJson(String source) => ContractDeliverGood.fromMap(json.decode(source));

  @override
  String toString() {
    return 'tradeSymbol: $tradeSymbol\ndestinationSymbol: $destinationSymbol\nunitsRequired: $unitsRequired\nunitsFulfilled: $unitsFulfilled';
  }

  @override
  List<Object> get props =>
      [tradeSymbol, destinationSymbol, unitsRequired, unitsFulfilled];
}
