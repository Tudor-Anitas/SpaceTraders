import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/chart.dart';
import 'package:space_traders/models/waypoint_faction.dart';
import 'package:space_traders/models/waypoint_orbital.dart';
import 'package:space_traders/models/waypoint_trait.dart';

class ScannedWaypoint extends Equatable {
  final String symbol;
  final String type;
  final String systemSymbol;
  final int x;
  final int y;
  final List<WaypointOrbital> orbitals;
  final WaypointFaction? faction;
  final List<WaypointTrait> traits;
  final Chart? chart;
  const ScannedWaypoint({
    required this.symbol,
    required this.type,
    required this.systemSymbol,
    required this.x,
    required this.y,
    required this.orbitals,
    this.faction,
    required this.traits,
    this.chart,
  });

  ScannedWaypoint copyWith({
    String? symbol,
    String? type,
    String? systemSymbol,
    int? x,
    int? y,
    List<WaypointOrbital>? orbitals,
    WaypointFaction? faction,
    List<WaypointTrait>? traits,
    Chart? chart,
  }) {
    return ScannedWaypoint(
      symbol: symbol ?? this.symbol,
      type: type ?? this.type,
      systemSymbol: systemSymbol ?? this.systemSymbol,
      x: x ?? this.x,
      y: y ?? this.y,
      orbitals: orbitals ?? this.orbitals,
      faction: faction ?? this.faction,
      traits: traits ?? this.traits,
      chart: chart ?? this.chart,
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
      'faction': faction?.toMap(),
      'traits': traits.map((x) => x.toMap()).toList(),
      'chart': chart?.toMap(),
    };
  }

  factory ScannedWaypoint.fromMap(Map<String, dynamic> map) {
    return ScannedWaypoint(
      symbol: map['symbol'] ?? '',
      type: map['type'] ?? '',
      systemSymbol: map['systemSymbol'] ?? '',
      x: map['x']?.toInt() ?? 0,
      y: map['y']?.toInt() ?? 0,
      orbitals: List<WaypointOrbital>.from(
          map['orbitals']?.map((x) => WaypointOrbital.fromMap(x))),
      faction: map['faction'] != null
          ? WaypointFaction.fromMap(map['faction'])
          : null,
      traits: List<WaypointTrait>.from(
          map['traits']?.map((x) => WaypointTrait.fromMap(x))),
      chart: map['chart'] != null ? Chart.fromMap(map['chart']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ScannedWaypoint.fromJson(String source) =>
      ScannedWaypoint.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ScannedWaypoint(symbol: $symbol, type: $type, systemSymbol: $systemSymbol, x: $x, y: $y, orbitals: $orbitals, faction: $faction, traits: $traits, chart: $chart)';
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
      faction!,
      traits,
      chart!,
    ];
  }
}
