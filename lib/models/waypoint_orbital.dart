import 'package:freezed_annotation/freezed_annotation.dart';

part 'waypoint_orbital.freezed.dart';
part 'waypoint_orbital.g.dart';

@freezed
class WaypointOrbital with _$WaypointOrbital {
  const factory WaypointOrbital({
    @Default('') String symbol,
  }) = _WaypointOrbital;

  factory WaypointOrbital.fromJson(Map<String, dynamic> json) => _$WaypointOrbitalFromJson(json);
}
