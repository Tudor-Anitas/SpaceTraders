import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:space_traders/models/chart.dart';
import 'package:space_traders/models/faction.dart';
import 'package:space_traders/models/waypoint_trait.dart';

part 'waypoint.freezed.dart';
part 'waypoint.g.dart';

@freezed
class Waypoint with _$Waypoint {
  const factory Waypoint({
    required String symbol,
    required String type,
    required String systemSymbol,
    required int x,
    required int y,
    @Default([]) List<String> orbitals,
    Faction? faction,
    @Default([]) List<WaypointTrait> traits,
    Chart? chart,
  }) = _Waypoint;

  factory Waypoint.fromJson(Map<String, dynamic> json) =>
      _$WaypointFromJson(json);
}
