import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:space_traders/models/engine.dart';
import 'package:space_traders/models/frame.dart';
import 'package:space_traders/models/mount.dart';
import 'package:space_traders/models/ship_nav.dart';
import 'package:space_traders/models/reactor.dart';
import 'package:space_traders/models/registrations.dart';

part 'scanned_ship.freezed.dart';
part 'scanned_ship.g.dart';

@freezed
class ScannedShip with _$ScannedShip {
  const factory ScannedShip({
    required String symbol,
    required Registration registration,
    required ShipNav nav,
    required Frame frame,
    required Reactor reactor,
    required Engine engine,
    @Default([]) List<Mount> mounts,
  }) = _ScannedShip;

  factory ScannedShip.fromJson(Map<String, dynamic> json) =>
      _$ScannedShipFromJson(json);
}
