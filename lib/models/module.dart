import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/requirements.dart';

class Module extends Equatable {
  final String symbol;
  final int capacity;
  final int range;
  final String name;
  final String description;
  final Requirements requirements;
  const Module({
    required this.symbol,
    required this.capacity,
    required this.range,
    required this.name,
    required this.description,
    required this.requirements,
  });

  Module copyWith({
    String? symbol,
    int? capacity,
    int? range,
    String? name,
    String? description,
    Requirements? requirements,
  }) {
    return Module(
      symbol: symbol ?? this.symbol,
      capacity: capacity ?? this.capacity,
      range: range ?? this.range,
      name: name ?? this.name,
      description: description ?? this.description,
      requirements: requirements ?? this.requirements,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'capacity': capacity,
      'range': range,
      'name': name,
      'description': description,
      'requirements': requirements.toMap(),
    };
  }

  factory Module.fromMap(Map<String, dynamic> map) {
    return Module(
      symbol: map['symbol'] ?? '',
      capacity: map['capacity']?.toInt() ?? 0,
      range: map['range']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      requirements: Requirements.fromMap(map['requirements']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Module.fromJson(String source) => Module.fromMap(json.decode(source));

  @override
  String toString() {
    return 'symbol: $symbol\ncapacity: $capacity\nrange: $range\nname: $name\ndescription: $description\nrequirements: $requirements';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      capacity,
      range,
      name,
      description,
      requirements,
    ];
  }
}
