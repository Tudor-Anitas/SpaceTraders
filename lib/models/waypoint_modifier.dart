import 'package:freezed_annotation/freezed_annotation.dart';

part 'waypoint_modifier.freezed.dart';
part 'waypoint_modifier.g.dart';

@freezed
class WaypointModifier with _$WaypointModifier {
  const factory WaypointModifier({
    @Default('') String symbol,
    @Default('') String name,
    @Default('') String description,
  }) = _WaypointModifier;

  factory WaypointModifier.fromJson(Map<String, dynamic> json) => _$WaypointModifierFromJson(json);
}
