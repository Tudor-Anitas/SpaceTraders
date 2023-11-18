// ignore_for_file: constant_identifier_names
import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:space_traders/models/cooldown.dart';
import 'package:space_traders/models/crew.dart';
import 'package:space_traders/models/engine.dart';
import 'package:space_traders/models/frame.dart';
import 'package:space_traders/models/fuel.dart';
import 'package:space_traders/models/module.dart';
import 'package:space_traders/models/mount.dart';
import 'package:space_traders/models/nav.dart';
import 'package:space_traders/models/reactor.dart';
import 'package:space_traders/models/registrations.dart';
import 'package:space_traders/models/ship_cargo.dart';

class Ship extends Equatable {
  final String symbol;
  final Registration registration;
  final Nav nav;
  final Crew crew;
  final Frame frame;
  final Reactor reactor;
  final Engine engine;
  final Cooldown cooldown;
  final List<Module> modules;
  final List<Mount> mounts;
  final ShipCargo cargo;
  final Fuel fuel;
  const Ship({
    required this.symbol,
    required this.registration,
    required this.nav,
    required this.crew,
    required this.frame,
    required this.reactor,
    required this.engine,
    required this.cooldown,
    required this.modules,
    required this.mounts,
    required this.cargo,
    required this.fuel,
  });

  Ship copyWith({
    String? symbol,
    Registration? registration,
    Nav? nav,
    Crew? crew,
    Frame? frame,
    Reactor? reactor,
    Engine? engine,
    Cooldown? cooldown,
    List<Module>? modules,
    List<Mount>? mounts,
    ShipCargo? cargo,
    Fuel? fuel,
  }) {
    return Ship(
      symbol: symbol ?? this.symbol,
      registration: registration ?? this.registration,
      nav: nav ?? this.nav,
      crew: crew ?? this.crew,
      frame: frame ?? this.frame,
      reactor: reactor ?? this.reactor,
      engine: engine ?? this.engine,
      cooldown: cooldown ?? this.cooldown,
      modules: modules ?? this.modules,
      mounts: mounts ?? this.mounts,
      cargo: cargo ?? this.cargo,
      fuel: fuel ?? this.fuel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'registration': registration.toMap(),
      'nav': nav.toMap(),
      'crew': crew.toMap(),
      'frame': frame.toMap(),
      'reactor': reactor.toMap(),
      'engine': engine.toMap(),
      'cooldown': cooldown.toMap(),
      'modules': modules.map((x) => x.toMap()).toList(),
      'mounts': mounts.map((x) => x.toMap()).toList(),
      'cargo': cargo.toMap(),
      'fuel': fuel.toMap(),
    };
  }

  factory Ship.fromMap(Map<String, dynamic> map) {
    return Ship(
      symbol: map['symbol'] ?? '',
      registration: Registration.fromMap(map['registration']),
      nav: Nav.fromMap(map['nav']),
      crew: Crew.fromMap(map['crew']),
      frame: Frame.fromMap(map['frame']),
      reactor: Reactor.fromMap(map['reactor']),
      engine: Engine.fromMap(map['engine']),
      cooldown: Cooldown.fromMap(map['cooldown']),
      modules: List<Module>.from(map['modules']?.map((x) => Module.fromMap(x))),
      mounts: List<Mount>.from(map['mounts']?.map((x) => Mount.fromMap(x))),
      cargo: ShipCargo.fromMap(map['cargo']),
      fuel: Fuel.fromMap(map['fuel']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Ship.fromJson(String source) => Ship.fromMap(json.decode(source));

  @override
  String toString() {
    return 'symbol: $symbol\nregistration: $registration\nnav: $nav\ncrew: $crew\nframe: $frame\nreactor: $reactor\nengine: $engine\ncooldown: $cooldown\nmodules: $modules\nmounts: $mounts\ncargo: $cargo\nfuel: $fuel';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      registration,
      nav,
      crew,
      frame,
      reactor,
      engine,
      cooldown,
      modules,
      mounts,
      cargo,
      fuel,
    ];
  }
}

enum ShipType {
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
