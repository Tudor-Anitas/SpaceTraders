// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:equatable/equatable.dart';

class Export extends Equatable {
  final String symbol;
  final String name;
  final String description;
  const Export({
    required this.symbol,
    required this.name,
    required this.description,
  });

  Export copyWith({
    String? symbol,
    String? name,
    String? description,
  }) {
    return Export(
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

  factory Export.fromMap(Map<String, dynamic> map) {
    return Export(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Export.fromJson(String source) => Export.fromMap(json.decode(source));

  @override
  String toString() =>
      'Export(symbol: $symbol, name: $name, description: $description)';

  @override
  List<Object> get props => [symbol, name, description];
}

enum ExportSymbol {
  PRECIOUS_STONES,
  QUARTZ_SAND,
  SILICON_CRYSTALS,
  AMMONIA_ICE,
  LIQUID_HYDROGEN,
  LIQUID_NITROGEN,
  ICE_WATER,
  EXOTIC_MATTER,
  ADVANCED_CIRCUITRY,
  GRAVITON_EMITTERS,
  IRON,
  IRON_ORE,
  COPPER,
  COPPER_ORE,
  ALUMINUM,
  ALUMINUM_ORE,
  SILVER,
  SILVER_ORE,
  GOLD,
  GOLD_ORE,
  PLATINUM,
  PLATINUM_ORE,
  DIAMONDS,
  URANITE,
  URANITE_ORE,
  MERITIUM,
  MERITIUM_ORE,
  HYDROCARBON,
  ANTIMATTER,
  FAB_MATS,
  FERTILIZERS,
  FABRICS,
  FOOD,
  JEWELRY,
  MACHINERY,
  FIREARMS,
  ASSAULT_RIFLES,
  MILITARY_EQUIPMENT,
  EXPLOSIVES,
  LAB_INSTRUMENTS,
  AMMUNITION,
  ELECTRONICS,
  SHIP_PLATING,
  SHIP_PARTS,
  EQUIPMENT,
  FUEL,
  MEDICINE,
  DRUGS,
  CLOTHING,
  MICROPROCESSORS,
  PLASTICS,
  POLYNUCLEOTIDES,
  BIOCOMPOSITES,
  QUANTUM_STABILIZERS,
  NANOBOTS,
  AI_MAINFRAMES,
  QUANTUM_DRIVES,
  ROBOTIC_DRONES,
  CYBER_IMPLANTS,
  GENE_THERAPEUTICS,
  NEURAL_CHIPS,
  MOOD_REGULATORS,
  VIRAL_AGENTS,
  MICRO_FUSION_GENERATORS,
  SUPERGRAINS,
  LASER_RIFLES,
  HOLOGRAPHICS,
  SHIP_SALVAGE,
  RELIC_TECH,
  NOVEL_LIFEFORMS,
  BOTANICAL_SPECIMENS,
  CULTURAL_ARTIFACTS,
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
  REACTOR_SOLAR_I,
  REACTOR_FUSION_I,
  REACTOR_FISSION_I,
  REACTOR_CHEMICAL_I,
  REACTOR_ANTIMATTER_I,
  ENGINE_IMPULSE_DRIVE_I,
  ENGINE_ION_DRIVE_I,
  ENGINE_ION_DRIVE_II,
  ENGINE_HYPER_DRIVE_I,
  MODULE_MINERAL_PROCESSOR_I,
  MODULE_GAS_PROCESSOR_I,
  MODULE_CARGO_HOLD_I,
  MODULE_CARGO_HOLD_II,
  MODULE_CARGO_HOLD_III,
  MODULE_CREW_QUARTERS_I,
  MODULE_ENVOY_QUARTERS_I,
  MODULE_PASSENGER_CABIN_I,
  MODULE_MICRO_REFINERY_I,
  MODULE_SCIENCE_LAB_I,
  MODULE_JUMP_DRIVE_I,
  MODULE_JUMP_DRIVE_II,
  MODULE_JUMP_DRIVE_III,
  MODULE_WARP_DRIVE_I,
  MODULE_WARP_DRIVE_II,
  MODULE_WARP_DRIVE_III,
  MODULE_SHIELD_GENERATOR_I,
  MODULE_SHIELD_GENERATOR_II,
  MODULE_ORE_REFINERY_I,
  MODULE_FUEL_REFINERY_I,
  MOUNT_GAS_SIPHON_I,
  MOUNT_GAS_SIPHON_II,
  MOUNT_GAS_SIPHON_III,
  MOUNT_SURVEYOR_I,
  MOUNT_SURVEYOR_II,
  MOUNT_SURVEYOR_III,
  MOUNT_SENSOR_ARRAY_I,
  MOUNT_SENSOR_ARRAY_II,
  MOUNT_SENSOR_ARRAY_III,
  MOUNT_MINING_LASER_I,
  MOUNT_MINING_LASER_II,
  MOUNT_MINING_LASER_III,
  MOUNT_LASER_CANNON_I,
  MOUNT_MISSILE_LAUNCHER_I,
  MOUNT_TURRET_I,
  SHIP_PROBE,
  SHIP_MINING_DRONE,
  SHIP_SIPHON_DRONE,
  SHIP_INTERCEPTOR,
  SHIP_LIGHT_HAULER,
  SHIP_COMMAND_FRIGATE,
  SHIP_EXPLORER,
  SHIP_HEAVY_FREIGHTER,
  SHIP_LIGHT_SHUTTLE,
  SHIP_ORE_HOUND,
  SHIP_REFINING_FREIGHTER,
  SHIP_SURVEYOR,
}
