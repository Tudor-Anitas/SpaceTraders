import 'dart:convert';

import 'package:equatable/equatable.dart';

class ShipyardTransaction extends Equatable {
  final String waypointSymbol;
  final String shipSymbol;
  final int price;
  final String agentSymbol;
  final String timestamp;
  const ShipyardTransaction({
    required this.waypointSymbol,
    required this.shipSymbol,
    required this.price,
    required this.agentSymbol,
    required this.timestamp,
  });

  ShipyardTransaction copyWith({
    String? waypointSymbol,
    String? shipSymbol,
    int? price,
    String? agentSymbol,
    String? timestamp,
  }) {
    return ShipyardTransaction(
      waypointSymbol: waypointSymbol ?? this.waypointSymbol,
      shipSymbol: shipSymbol ?? this.shipSymbol,
      price: price ?? this.price,
      agentSymbol: agentSymbol ?? this.agentSymbol,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'waypointSymbol': waypointSymbol,
      'shipSymbol': shipSymbol,
      'price': price,
      'agentSymbol': agentSymbol,
      'timestamp': timestamp,
    };
  }

  factory ShipyardTransaction.fromMap(Map<String, dynamic> map) {
    return ShipyardTransaction(
      waypointSymbol: map['waypointSymbol'] ?? '',
      shipSymbol: map['shipSymbol'] ?? '',
      price: map['price']?.toInt() ?? 0,
      agentSymbol: map['agentSymbol'] ?? '',
      timestamp: map['timestamp'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ShipyardTransaction.fromJson(String source) =>
      ShipyardTransaction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ShipyardTransaction(waypointSymbol: $waypointSymbol, shipSymbol: $shipSymbol, price: $price, agentSymbol: $agentSymbol, timestamp: $timestamp)';
  }

  @override
  List<Object> get props {
    return [
      waypointSymbol,
      shipSymbol,
      price,
      agentSymbol,
      timestamp,
    ];
  }
}
