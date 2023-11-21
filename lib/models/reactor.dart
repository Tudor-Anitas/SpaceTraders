// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/requirements.dart';

class Reactor extends Equatable {
  final String symbol;
  final String name;
  final String description;
  final int condition;
  final int powerOutput;
  final Requirements requirements;
  const Reactor({
    required this.symbol,
    required this.name,
    required this.description,
    required this.condition,
    required this.powerOutput,
    required this.requirements,
  });

  Reactor copyWith({
    String? symbol,
    String? name,
    String? description,
    int? condition,
    int? powerOutput,
    Requirements? requirements,
  }) {
    return Reactor(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      description: description ?? this.description,
      condition: condition ?? this.condition,
      powerOutput: powerOutput ?? this.powerOutput,
      requirements: requirements ?? this.requirements,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'description': description,
      'condition': condition,
      'powerOutput': powerOutput,
      'requirements': requirements.toMap(),
    };
  }

  factory Reactor.fromMap(Map<String, dynamic> map) {
    return Reactor(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      condition: map['condition']?.toInt() ?? 0,
      powerOutput: map['powerOutput']?.toInt() ?? 0,
      requirements: Requirements.fromMap(map['requirements']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Reactor.fromJson(String source) =>
      Reactor.fromMap(json.decode(source));

  @override
  String toString() {
    return 'symbol: $symbol\nname: $name\ndescription: $description\ncondition: $condition\npowerOutput: $powerOutput\nrequirements: $requirements';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      name,
      description,
      condition,
      powerOutput,
      requirements,
    ];
  }
}

enum ReactorSymbol {
  REACTOR_SOLAR_I,
  REACTOR_FUSION_I,
  REACTOR_FISSION_I,
  REACTOR_CHEMICAL_I,
  REACTOR_ANTIMATTER_I,
}
