import 'dart:convert';

import 'package:equatable/equatable.dart';

class WaypointModifier extends Equatable {
  final String symbol;
  final String name;
  final String description;
  const WaypointModifier({
    required this.symbol,
    required this.name,
    required this.description,
  });

  WaypointModifier copyWith({
    String? symbol,
    String? name,
    String? description,
  }) {
    return WaypointModifier(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'description': description,
    };
  }

  factory WaypointModifier.fromMap(Map<String, dynamic> map) {
    return WaypointModifier(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WaypointModifier.fromJson(String source) => WaypointModifier.fromMap(json.decode(source));

  @override
  String toString() => 'WaypointModifier(symbol: $symbol, name: $name, description: $description)';

  @override
  List<Object> get props => [symbol, name, description];
}
