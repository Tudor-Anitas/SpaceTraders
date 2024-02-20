// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/requirements.dart';

class Engine extends Equatable {
  final String symbol;
  final String name;
  final String description;
  final int condition;
  final int speed;
  final Requirements requirements;
  const Engine({
    required this.symbol,
    required this.name,
    required this.description,
    required this.condition,
    required this.speed,
    required this.requirements,
  });

  Engine copyWith({
    String? symbol,
    String? name,
    String? description,
    int? condition,
    int? speed,
    Requirements? requirements,
  }) {
    return Engine(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      description: description ?? this.description,
      condition: condition ?? this.condition,
      speed: speed ?? this.speed,
      requirements: requirements ?? this.requirements,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'description': description,
      'condition': condition,
      'speed': speed,
      'requirements': requirements.toMap(),
    };
  }

  factory Engine.fromMap(Map<String, dynamic> map) {
    return Engine(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      condition: map['condition']?.toInt() ?? 0,
      speed: map['speed']?.toInt() ?? 0,
      requirements: Requirements.fromMap(map['requirements'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Engine.fromJson(String source) => Engine.fromMap(json.decode(source));

  @override
  String toString() {
    return 'symbol: $symbol\nname: $name\ndescription: $description\ncondition: $condition\nspeed: $speed\nrequirements: $requirements';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      name,
      description,
      condition,
      speed,
      requirements,
    ];
  }
}

enum EngineSymbol {
  ENGINE_IMPULSE_DRIVE_I,
  ENGINE_ION_DRIVE_I,
  ENGINE_ION_DRIVE_II,
  ENGINE_HYPER_DRIVE_I,
}
