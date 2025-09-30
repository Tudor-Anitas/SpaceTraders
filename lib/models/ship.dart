// ignore_for_file: constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/cooldown.dart';
import 'package:space_traders/models/crew.dart';
import 'package:space_traders/models/engine.dart';
import 'package:space_traders/models/frame.dart';
import 'package:space_traders/models/fuel.dart';
import 'package:space_traders/models/module.dart';
import 'package:space_traders/models/mount.dart';
import 'package:space_traders/models/ship_nav.dart';
import 'package:space_traders/models/reactor.dart';
import 'package:space_traders/models/registrations.dart';
import 'package:space_traders/models/ship_cargo.dart';

part 'ship.freezed.dart';
part 'ship.g.dart';

@freezed
class Ship with _$Ship {
  const factory Ship({
    @Default('') String symbol,
    @Default(Registration()) Registration registration,
    required ShipNav nav,
    @Default(Crew()) Crew crew,
    @Default(Frame()) Frame frame,
    @Default(Reactor()) Reactor reactor,
    @Default(Engine()) Engine engine,
    @Default(Cooldown()) Cooldown cooldown,
    @Default([]) List<Module> modules,
    @Default([]) List<Mount> mounts,
    @Default(ShipCargo()) ShipCargo cargo,
    @Default(Fuel()) Fuel fuel,
  }) = _Ship;

  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);
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

extension ShipTypeExtension on String {
  ShipType get convertToShipType {
    switch (this) {
      case 'SHIP_PROBE':
        return ShipType.SHIP_PROBE;
      case 'SHIP_MINING_DRONE':
        return ShipType.SHIP_MINING_DRONE;
      case 'SHIP_SIPHON_DRONE':
        return ShipType.SHIP_SIPHON_DRONE;
      case 'SHIP_INTERCEPTOR':
        return ShipType.SHIP_INTERCEPTOR;
      case 'SHIP_LIGHT_HAULER':
        return ShipType.SHIP_LIGHT_HAULER;
      case 'SHIP_COMMAND_FRIGATE':
        return ShipType.SHIP_COMMAND_FRIGATE;
      case 'SHIP_EXPLORER':
        return ShipType.SHIP_EXPLORER;
      case 'SHIP_HEAVY_FREIGHTER':
        return ShipType.SHIP_HEAVY_FREIGHTER;
      case 'SHIP_LIGHT_SHUTTLE':
        return ShipType.SHIP_LIGHT_SHUTTLE;
      case 'SHIP_ORE_HOUND':
        return ShipType.SHIP_ORE_HOUND;
      case 'SHIP_REFINING_FREIGHTER':
        return ShipType.SHIP_REFINING_FREIGHTER;
      case 'SHIP_SURVEYOR':
        return ShipType.SHIP_SURVEYOR;
      default:
        return ShipType.SHIP_PROBE;
    }
  }
}
