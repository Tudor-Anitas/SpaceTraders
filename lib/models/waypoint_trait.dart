import 'dart:convert';

import 'package:equatable/equatable.dart';

class WaypointTrait extends Equatable {
  final String symbol;
  final String name;
  final String description;
  const WaypointTrait({
    required this.symbol,
    required this.name,
    required this.description,
  });

  WaypointTrait copyWith({
    String? symbol,
    String? name,
    String? description,
  }) {
    return WaypointTrait(
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

  factory WaypointTrait.fromMap(Map<String, dynamic> map) {
    return WaypointTrait(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WaypointTrait.fromJson(String source) =>
      WaypointTrait.fromMap(json.decode(source));

  @override
  String toString() =>
      'WaypointTrait(symbol: $symbol, name: $name, description: $description)';

  @override
  List<Object> get props => [symbol, name, description];
}
