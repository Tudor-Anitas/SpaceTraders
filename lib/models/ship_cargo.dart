import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/inventory.dart';

class ShipCargo extends Equatable {
  final int capacity;
  final int units;
  final List<Inventory> inventory;
  const ShipCargo({
    required this.capacity,
    required this.units,
    required this.inventory,
  });

  ShipCargo copyWith({
    int? capacity,
    int? units,
    List<Inventory>? inventory,
  }) {
    return ShipCargo(
      capacity: capacity ?? this.capacity,
      units: units ?? this.units,
      inventory: inventory ?? this.inventory,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'capacity': capacity,
      'units': units,
      'inventory': inventory.map((x) => x.toMap()).toList(),
    };
  }

  factory ShipCargo.fromMap(Map<String, dynamic> map) {
    return ShipCargo(
      capacity: map['capacity']?.toInt() ?? 0,
      units: map['units']?.toInt() ?? 0,
      inventory: List<Inventory>.from(
          map['inventory']?.map((x) => Inventory.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ShipCargo.fromJson(String source) =>
      ShipCargo.fromMap(json.decode(source));

  @override
  String toString() =>
      'capacity: $capacity\nunits: $units\nnventory: $inventory';

  @override
  List<Object> get props => [capacity, units, inventory];
}
