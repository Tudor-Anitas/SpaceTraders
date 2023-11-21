import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/faction.dart';
import 'package:space_traders/models/waypoint.dart';

class System extends Equatable {
  final String symbol;
  final String sectorySymbol;
  final String type;
  final int x;
  final int y;
  final List<Waypoint> waypoints;
  final List<Faction> factions;
  const System({
    required this.symbol,
    required this.sectorySymbol,
    required this.type,
    required this.x,
    required this.y,
    required this.waypoints,
    required this.factions,
  });

  System copyWith({
    String? symbol,
    String? sectorySymbol,
    String? type,
    int? x,
    int? y,
    List<Waypoint>? waypoints,
    List<Faction>? factions,
  }) {
    return System(
      symbol: symbol ?? this.symbol,
      sectorySymbol: sectorySymbol ?? this.sectorySymbol,
      type: type ?? this.type,
      x: x ?? this.x,
      y: y ?? this.y,
      waypoints: waypoints ?? this.waypoints,
      factions: factions ?? this.factions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'sectorySymbol': sectorySymbol,
      'type': type,
      'x': x,
      'y': y,
      'waypoints': waypoints.map((x) => x.toMap()).toList(),
      'factions': factions.map((x) => x.toMap()).toList(),
    };
  }

  factory System.fromMap(Map<String, dynamic> map) {
    return System(
      symbol: map['symbol'] ?? '',
      sectorySymbol: map['sectorySymbol'] ?? '',
      type: map['type'] ?? '',
      x: map['x']?.toInt() ?? 0,
      y: map['y']?.toInt() ?? 0,
      waypoints: List<Waypoint>.from(
          map['waypoints']?.map((x) => Waypoint.fromMap(x))),
      factions:
          List<Faction>.from(map['factions']?.map((x) => Faction.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory System.fromJson(String source) => System.fromMap(json.decode(source));

  @override
  String toString() {
    return 'System(symbol: $symbol, sectorySymbol: $sectorySymbol, type: $type, x: $x, y: $y, waypoints: $waypoints, factions: $factions)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      sectorySymbol,
      type,
      x,
      y,
      waypoints,
      factions,
    ];
  }
}
