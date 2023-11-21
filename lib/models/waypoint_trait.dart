// ignore_for_file: constant_identifier_names

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

enum WaypointTraitSymbol {
  UNCHARTED,
  UNDER_CONSTRUCTION,
  MARKETPLACE,
  SHIPYARD,
  OUTPOST,
  SCATTERED_SETTLEMENTS,
  SPRAWLING_CITIES,
  MEGA_STRUCTURES,
  PIRATE_BASE,
  OVERCROWDED,
  HIGH_TECH,
  CORRUPT,
  BUREAUCRATIC,
  TRADING_HUB,
  INDUSTRIAL,
  BLACK_MARKET,
  RESEARCH_FACILITY,
  MILITARY_BASE,
  SURVEILLANCE_OUTPOST,
  EXPLORATION_OUTPOST,
  MINERAL_DEPOSITS,
  COMMON_METAL_DEPOSITS,
  PRECIOUS_METAL_DEPOSITS,
  RARE_METAL_DEPOSITS,
  METHANE_POOLS,
  ICE_CRYSTALS,
  EXPLOSIVE_GASES,
  STRONG_MAGNETOSPHERE,
  VIBRANT_AURORAS,
  SALT_FLATS,
  CANYONS,
  PERPETUAL_DAYLIGHT,
  PERPETUAL_OVERCAST,
  DRY_SEABEDS,
  MAGMA_SEAS,
  SUPERVOLCANOES,
  ASH_CLOUDS,
  VAST_RUINS,
  MUTATED_FLORA,
  TERRAFORMED,
  EXTREME_TEMPERATURES,
  EXTREME_PRESSURE,
  DIVERSE_LIFE,
  SCARCE_LIFE,
  FOSSILS,
  WEAK_GRAVITY,
  STRONG_GRAVITY,
  CRUSHING_GRAVITY,
  TOXIC_ATMOSPHERE,
  CORROSIVE_ATMOSPHERE,
  BREATHABLE_ATMOSPHERE,
  THIN_ATMOSPHERE,
  JOVIAN,
  ROCKY,
  VOLCANIC,
  FROZEN,
  SWAMP,
  BARREN,
  TEMPERATE,
  JUNGLE,
  OCEAN,
  RADIOACTIVE,
  MICRO_GRAVITY_ANOMALIES,
  DEBRIS_CLUSTER,
  DEEP_CRATERS,
  SHALLOW_CRATERS,
  UNSTABLE_COMPOSITION,
  HOLLOWED_INTERIOR,
  STRIPPED,
}
