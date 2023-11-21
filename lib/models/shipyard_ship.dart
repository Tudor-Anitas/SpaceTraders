// ignore_for_file: constant_identifier_names
import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:space_traders/models/engine.dart';
import 'package:space_traders/models/frame.dart';
import 'package:space_traders/models/module.dart';
import 'package:space_traders/models/mount.dart';
import 'package:space_traders/models/reactor.dart';
import 'package:space_traders/models/shipyard_crew.dart';

class ShipyardShip extends Equatable {
  final String type;
  final String name;
  final String description;
  final String supply;
  final String activity;
  final int purchasePrice;
  final Frame frame;
  final Reactor reactor;
  final Engine engine;
  final List<Module> modules;
  final List<Mount> mounts;
  final List<ShipyardCrew> crew;
  const ShipyardShip({
    required this.type,
    required this.name,
    required this.description,
    required this.supply,
    required this.activity,
    required this.purchasePrice,
    required this.frame,
    required this.reactor,
    required this.engine,
    required this.modules,
    required this.mounts,
    required this.crew,
  });

  ShipyardShip copyWith({
    String? type,
    String? name,
    String? description,
    String? supply,
    String? activity,
    int? purchasePrice,
    Frame? frame,
    Reactor? reactor,
    Engine? engine,
    List<Module>? modules,
    List<Mount>? mounts,
    List<ShipyardCrew>? crew,
  }) {
    return ShipyardShip(
      type: type ?? this.type,
      name: name ?? this.name,
      description: description ?? this.description,
      supply: supply ?? this.supply,
      activity: activity ?? this.activity,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      frame: frame ?? this.frame,
      reactor: reactor ?? this.reactor,
      engine: engine ?? this.engine,
      modules: modules ?? this.modules,
      mounts: mounts ?? this.mounts,
      crew: crew ?? this.crew,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'name': name,
      'description': description,
      'supply': supply,
      'activity': activity,
      'purchasePrice': purchasePrice,
      'frame': frame.toMap(),
      'reactor': reactor.toMap(),
      'engine': engine.toMap(),
      'modules': modules.map((x) => x.toMap()).toList(),
      'mounts': mounts.map((x) => x.toMap()).toList(),
      'crew': crew.map((x) => x.toMap()).toList(),
    };
  }

  factory ShipyardShip.fromMap(Map<String, dynamic> map) {
    return ShipyardShip(
      type: map['type'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      supply: map['supply'] ?? '',
      activity: map['activity'] ?? '',
      purchasePrice: map['purchasePrice']?.toInt() ?? 0,
      frame: Frame.fromMap(map['frame']),
      reactor: Reactor.fromMap(map['reactor']),
      engine: Engine.fromMap(map['engine']),
      modules: List<Module>.from(map['modules']?.map((x) => Module.fromMap(x))),
      mounts: List<Mount>.from(map['mounts']?.map((x) => Mount.fromMap(x))),
      crew: List<ShipyardCrew>.from(
          map['crew']?.map((x) => ShipyardCrew.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ShipyardShip.fromJson(String source) =>
      ShipyardShip.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ShipyardShip(type: $type, name: $name, description: $description, supply: $supply, activity: $activity, purchasePrice: $purchasePrice, frame: $frame, reactor: $reactor, engine: $engine, modules: $modules, mounts: $mounts, crew: $crew)';
  }

  @override
  List<Object> get props {
    return [
      type,
      name,
      description,
      supply,
      activity,
      purchasePrice,
      frame,
      reactor,
      engine,
      modules,
      mounts,
      crew,
    ];
  }
}

enum ShipyardShipType {
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

enum ShipyardShipSupply {
  SCARCE,
  LIMITED,
  MODERATE,
  HIGH,
  ABUNDANT,
}

enum ShipyardShipActivity {
  WEAK,
  GROWING,
  STRONG,
  RESTRICTED,
}
