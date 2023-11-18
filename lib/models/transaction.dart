import 'dart:convert';

import 'package:equatable/equatable.dart';

class Transaction extends Equatable {
  final String waypointSymbol;
  final String shipSymbol;
  final int price;
  final String agentSymbol;
  final String timestamp;
  const Transaction({
    required this.waypointSymbol,
    required this.shipSymbol,
    required this.price,
    required this.agentSymbol,
    required this.timestamp,
  });

  Transaction copyWith({
    String? waypointSymbol,
    String? shipSymbol,
    int? price,
    String? agentSymbol,
    String? timestamp,
  }) {
    return Transaction(
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

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      waypointSymbol: map['waypointSymbol'] ?? '',
      shipSymbol: map['shipSymbol'] ?? '',
      price: map['price']?.toInt() ?? 0,
      agentSymbol: map['agentSymbol'] ?? '',
      timestamp: map['timestamp'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) =>
      Transaction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'waypointSymbol: $waypointSymbol\nshipSymbol: $shipSymbol\nprice: $price\nagentSymbol: $agentSymbol\ntimestamp: $timestamp';
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
