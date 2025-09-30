import 'package:freezed_annotation/freezed_annotation.dart';

part 'waypoint_faction.freezed.dart';
part 'waypoint_faction.g.dart';

@freezed
class WaypointFaction with _$WaypointFaction {
  const factory WaypointFaction({
    @Default('') String symbol,
  }) = _WaypointFaction;

  factory WaypointFaction.fromJson(Map<String, dynamic> json) => _$WaypointFactionFromJson(json);
}
