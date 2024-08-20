// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/requirements.dart';

class Frame extends Equatable {
  final String symbol;
  final String name;
  final String description;
  final double condition;
  final double integrity;
  final int moduleSlots;
  final int mountingPoints;
  final int fuelCapacity;
  final Requirements requirements;
  const Frame({
    required this.symbol,
    required this.name,
    required this.description,
    required this.condition,
    required this.integrity,
    required this.moduleSlots,
    required this.mountingPoints,
    required this.fuelCapacity,
    required this.requirements,
  });

  Frame copyWith({
    String? symbol,
    String? name,
    String? description,
    double? condition,
    double? integrity,
    int? moduleSlots,
    int? mountingPoints,
    int? fuelCapacity,
    Requirements? requirements,
  }) {
    return Frame(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      description: description ?? this.description,
      condition: condition ?? this.condition,
      integrity: integrity ?? this.integrity,
      moduleSlots: moduleSlots ?? this.moduleSlots,
      mountingPoints: mountingPoints ?? this.mountingPoints,
      fuelCapacity: fuelCapacity ?? this.fuelCapacity,
      requirements: requirements ?? this.requirements,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'description': description,
      'condition': condition,
      'integrity': integrity,
      'moduleSlots': moduleSlots,
      'mountingPoints': mountingPoints,
      'fuelCapacity': fuelCapacity,
      'requirements': requirements.toMap(),
    };
  }

  factory Frame.fromMap(Map<String, dynamic> map) {
    return Frame(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      condition: map['condition']?.toDouble() ?? 0.0,
      integrity: map['integrity']?.toDouble() ?? 0.0,
      moduleSlots: map['moduleSlots']?.toInt() ?? 0,
      mountingPoints: map['mountingPoints']?.toInt() ?? 0,
      fuelCapacity: map['fuelCapacity']?.toInt() ?? 0,
      requirements: Requirements.fromMap(map['requirements'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Frame.fromJson(String source) => Frame.fromMap(json.decode(source));

  @override
  String toString() {
    return 'symbol: $symbol\nname: $name\ndescription: $description\ncondition: $condition\nintegrity: $integrity\nmoduleSlots: $moduleSlots\nmountingPoints: $mountingPoints\nfuelCapacity: $fuelCapacity\nrequirements: $requirements)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      name,
      description,
      condition,
      integrity,
      moduleSlots,
      mountingPoints,
      fuelCapacity,
      requirements,
    ];
  }
}

enum FrameSymbol {
  FRAME_PROBE,
  FRAME_DRONE,
  FRAME_INTERCEPTOR,
  FRAME_RACER,
  FRAME_FIGHTER,
  FRAME_FRIGATE,
  FRAME_SHUTTLE,
  FRAME_EXPLORER,
  FRAME_MINER,
  FRAME_LIGHT_FREIGHTER,
  FRAME_HEAVY_FREIGHTER,
  FRAME_TRANSPORT,
  FRAME_DESTROYER,
  FRAME_CRUISER,
  FRAME_CARRIER,
}
