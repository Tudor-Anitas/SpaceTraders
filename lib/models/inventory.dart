import 'dart:convert';

import 'package:equatable/equatable.dart';

class Inventory extends Equatable {
  final String symbol;
  final String name;
  final String description;
  final int units;
  const Inventory({
    required this.symbol,
    required this.name,
    required this.description,
    required this.units,
  });

  Inventory copyWith({
    String? symbol,
    String? name,
    String? description,
    int? units,
  }) {
    return Inventory(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      description: description ?? this.description,
      units: units ?? this.units,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'description': description,
      'units': units,
    };
  }

  factory Inventory.fromMap(Map<String, dynamic> map) {
    return Inventory(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      units: map['units']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Inventory.fromJson(String source) =>
      Inventory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'symbol: $symbol\nname: $name\ndescription: $description\nunits: $units';
  }

  @override
  List<Object> get props => [symbol, name, description, units];
}
