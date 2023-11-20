import 'dart:convert';

import 'package:equatable/equatable.dart';

class ScannedSystem extends Equatable {
  final String symbol;
  final String sectorSymbol;
  final String type;
  final int x;
  final int y;
  final int distance;
  const ScannedSystem({
    required this.symbol,
    required this.sectorSymbol,
    required this.type,
    required this.x,
    required this.y,
    required this.distance,
  });

  ScannedSystem copyWith({
    String? symbol,
    String? sectorSymbol,
    String? type,
    int? x,
    int? y,
    int? distance,
  }) {
    return ScannedSystem(
      symbol: symbol ?? this.symbol,
      sectorSymbol: sectorSymbol ?? this.sectorSymbol,
      type: type ?? this.type,
      x: x ?? this.x,
      y: y ?? this.y,
      distance: distance ?? this.distance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'sectorSymbol': sectorSymbol,
      'type': type,
      'x': x,
      'y': y,
      'distance': distance,
    };
  }

  factory ScannedSystem.fromMap(Map<String, dynamic> map) {
    return ScannedSystem(
      symbol: map['symbol'] ?? '',
      sectorSymbol: map['sectorSymbol'] ?? '',
      type: map['type'] ?? '',
      x: map['x']?.toInt() ?? 0,
      y: map['y']?.toInt() ?? 0,
      distance: map['distance']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ScannedSystem.fromJson(String source) =>
      ScannedSystem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ScannedSystem(symbol: $symbol, sectorSymbol: $sectorSymbol, type: $type, x: $x, y: $y, distance: $distance)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      sectorSymbol,
      type,
      x,
      y,
      distance,
    ];
  }
}
