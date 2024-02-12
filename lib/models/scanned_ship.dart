import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/engine.dart';
import 'package:space_traders/models/frame.dart';
import 'package:space_traders/models/mount.dart';
import 'package:space_traders/models/ship_nav.dart';
import 'package:space_traders/models/reactor.dart';
import 'package:space_traders/models/registrations.dart';

class ScannedShip extends Equatable {
  final String symbol;
  final Registration registration;
  final ShipNav nav;
  final Frame? frame;
  final Reactor? reactor;
  final Engine engine;
  final List<Mount>? mounts;
  const ScannedShip({
    required this.symbol,
    required this.registration,
    required this.nav,
    this.frame,
    this.reactor,
    required this.engine,
    this.mounts,
  });

  ScannedShip copyWith({
    String? symbol,
    Registration? registration,
    ShipNav? nav,
    Frame? frame,
    Reactor? reactor,
    Engine? engine,
    List<Mount>? mounts,
  }) {
    return ScannedShip(
      symbol: symbol ?? this.symbol,
      registration: registration ?? this.registration,
      nav: nav ?? this.nav,
      frame: frame ?? this.frame,
      reactor: reactor ?? this.reactor,
      engine: engine ?? this.engine,
      mounts: mounts ?? this.mounts,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'registration': registration.toMap(),
      'nav': nav.toMap(),
      'frame': frame?.toMap(),
      'reactor': reactor?.toMap(),
      'engine': engine.toMap(),
      'mounts': mounts?.map((x) => x.toMap()).toList(),
    };
  }

  factory ScannedShip.fromMap(Map<String, dynamic> map) {
    return ScannedShip(
      symbol: map['symbol'] ?? '',
      registration: Registration.fromMap(map['registration']),
      nav: ShipNav.fromMap(map['nav']),
      frame: map['frame'] != null ? Frame.fromMap(map['frame']) : null,
      reactor: map['reactor'] != null ? Reactor.fromMap(map['reactor']) : null,
      engine: Engine.fromMap(map['engine']),
      mounts: map['mounts'] != null
          ? List<Mount>.from(map['mounts']?.map((x) => Mount.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ScannedShip.fromJson(String source) =>
      ScannedShip.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ScannedShip(symbol: $symbol, registration: $registration, nav: $nav, frame: $frame, reactor: $reactor, engine: $engine, mounts: $mounts)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      registration,
      nav,
      frame!,
      reactor!,
      engine,
      mounts!,
    ];
  }
}
