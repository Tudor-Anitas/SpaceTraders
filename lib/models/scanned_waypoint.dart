import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanned_waypoint.freezed.dart';
part 'scanned_waypoint.g.dart';

@freezed
class ScannedWaypoint with _$ScannedWaypoint {
  const factory ScannedWaypoint({
    required String symbol,
    required String type,
    required String systemSymbol,
    required int x,
    required int y,
    @Default([]) List<String> orbitals,
    String? faction,
    Map<String, dynamic>? traits,
    Map<String, dynamic>? chart,
  }) = _ScannedWaypoint;

  factory ScannedWaypoint.fromJson(Map<String, dynamic> json) =>
      _$ScannedWaypointFromJson(json);
}
