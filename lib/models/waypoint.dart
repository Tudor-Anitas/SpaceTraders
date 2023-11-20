import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/chart.dart';
import 'package:space_traders/models/waypoint_faction.dart';
import 'package:space_traders/models/waypoint_modifier.dart';
import 'package:space_traders/models/waypoint_orbital.dart';
import 'package:space_traders/models/waypoint_trait.dart';

class Waypoint extends Equatable {
  final String symbol;
  final String type;
  final String systemSymbol;
  final int x;
  final int y;
  final List<WaypointOrbital> orbitals;
  final String? orbits;
  final WaypointFaction faction;
  final List<WaypointTrait> traits;
  final List<WaypointModifier>? modifiers;
  final Chart? chart;
  final bool isUnderConstruction;
  const Waypoint({
    required this.symbol,
    required this.type,
    required this.systemSymbol,
    required this.x,
    required this.y,
    required this.orbitals,
    this.orbits,
    required this.faction,
    required this.traits,
    this.modifiers,
    this.chart,
    required this.isUnderConstruction,
  });

  Waypoint copyWith({
    String? symbol,
    String? type,
    String? systemSymbol,
    int? x,
    int? y,
    List<WaypointOrbital>? orbitals,
    String? orbits,
    WaypointFaction? faction,
    List<WaypointTrait>? traits,
    List<WaypointModifier>? modifiers,
    Chart? chart,
    bool? isUnderConstruction,
  }) {
    return Waypoint(
      symbol: symbol ?? this.symbol,
      type: type ?? this.type,
      systemSymbol: systemSymbol ?? this.systemSymbol,
      x: x ?? this.x,
      y: y ?? this.y,
      orbitals: orbitals ?? this.orbitals,
      orbits: orbits ?? this.orbits,
      faction: faction ?? this.faction,
      traits: traits ?? this.traits,
      modifiers: modifiers ?? this.modifiers,
      chart: chart ?? this.chart,
      isUnderConstruction: isUnderConstruction ?? this.isUnderConstruction,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'type': type,
      'systemSymbol': systemSymbol,
      'x': x,
      'y': y,
      'orbitals': orbitals.map((x) => x.toMap()).toList(),
      'orbits': orbits,
      'faction': faction.toMap(),
      'traits': traits.map((x) => x.toMap()).toList(),
      'modifiers': modifiers?.map((x) => x.toMap()).toList(),
      'chart': chart?.toMap(),
      'isUnderConstruction': isUnderConstruction,
    };
  }

  factory Waypoint.fromMap(Map<String, dynamic> map) {
    return Waypoint(
      symbol: map['symbol'] ?? '',
      type: map['type'] ?? '',
      systemSymbol: map['systemSymbol'] ?? '',
      x: map['x']?.toInt() ?? 0,
      y: map['y']?.toInt() ?? 0,
      orbitals: List<WaypointOrbital>.from(
          map['orbitals']?.map((x) => WaypointOrbital.fromMap(x))),
      orbits: map['orbits'],
      faction: WaypointFaction.fromMap(map['faction']),
      traits: List<WaypointTrait>.from(
          map['traits']?.map((x) => WaypointTrait.fromMap(x))),
      modifiers: map['modifiers'] != null
          ? List<WaypointModifier>.from(
              map['modifiers']?.map((x) => WaypointModifier.fromMap(x)))
          : null,
      chart: map['chart'] != null ? Chart.fromMap(map['chart']) : null,
      isUnderConstruction: map['isUnderConstruction'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Waypoint.fromJson(String source) =>
      Waypoint.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Waypoint(symbol: $symbol, type: $type, systemSymbol: $systemSymbol, x: $x, y: $y, orbitals: $orbitals, orbits: $orbits, faction: $faction, traits: $traits, modifiers: $modifiers, chart: $chart, isUnderConstruction: $isUnderConstruction)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      type,
      systemSymbol,
      x,
      y,
      orbitals,
      orbits!,
      faction,
      traits,
      modifiers!,
      chart!,
      isUnderConstruction,
    ];
  }
}
