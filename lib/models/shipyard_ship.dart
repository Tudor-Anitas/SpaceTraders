// ignore_for_file: constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/engine.dart';
import 'package:space_traders/models/frame.dart';
import 'package:space_traders/models/module.dart';
import 'package:space_traders/models/mount.dart';
import 'package:space_traders/models/reactor.dart';
part 'shipyard_ship.freezed.dart';
part 'shipyard_ship.g.dart';

@freezed
class ShipyardShip with _$ShipyardShip {
  const factory ShipyardShip({
    required String type,
    required String name,
    required String description,
    required int purchasePrice,
    required Frame frame,
    required Reactor reactor,
    required Engine engine,
    @Default([]) List<Module> modules,
    @Default([]) List<Mount> mounts,
  }) = _ShipyardShip;

  factory ShipyardShip.fromJson(Map<String, dynamic> json) =>
      _$ShipyardShipFromJson(json);
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
