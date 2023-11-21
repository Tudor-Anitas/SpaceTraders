import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/shipyard_ship.dart';
import 'package:space_traders/models/shipyard_transaction.dart';

class Shipyard extends Equatable {
  final String symbol;
  final List<String> shipTypes;
  final List<ShipyardTransaction> transactions;
  final List<ShipyardShip> ships;
  final int modificationFee;
  const Shipyard({
    required this.symbol,
    required this.shipTypes,
    required this.transactions,
    required this.ships,
    required this.modificationFee,
  });

  Shipyard copyWith({
    String? symbol,
    List<String>? shipTypes,
    List<ShipyardTransaction>? transactions,
    List<ShipyardShip>? ships,
    int? modificationFee,
  }) {
    return Shipyard(
      symbol: symbol ?? this.symbol,
      shipTypes: shipTypes ?? this.shipTypes,
      transactions: transactions ?? this.transactions,
      ships: ships ?? this.ships,
      modificationFee: modificationFee ?? this.modificationFee,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'shipTypes': shipTypes,
      'transactions': transactions.map((x) => x.toMap()).toList(),
      'ships': ships.map((x) => x.toMap()).toList(),
      'modificationFee': modificationFee,
    };
  }

  factory Shipyard.fromMap(Map<String, dynamic> map) {
    return Shipyard(
      symbol: map['symbol'] ?? '',
      shipTypes: List<String>.from(map['shipTypes']),
      transactions: List<ShipyardTransaction>.from(
          map['transactions']?.map((x) => ShipyardTransaction.fromMap(x))),
      ships: List<ShipyardShip>.from(
          map['ships']?.map((x) => ShipyardShip.fromMap(x))),
      modificationFee: map['modificationFee']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Shipyard.fromJson(String source) =>
      Shipyard.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Shipyard(symbol: $symbol, shipTypes: $shipTypes, transactions: $transactions, ships: $ships, modificationFee: $modificationFee)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      shipTypes,
      transactions,
      ships,
      modificationFee,
    ];
  }
}
