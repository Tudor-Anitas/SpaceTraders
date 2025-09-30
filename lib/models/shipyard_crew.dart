import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipyard_crew.freezed.dart';
part 'shipyard_crew.g.dart';

@freezed
class ShipyardCrew with _$ShipyardCrew {
  const factory ShipyardCrew({
    @Default(0) int requiredCrew,
    @Default(0) int capacity,
  }) = _ShipyardCrew;

  factory ShipyardCrew.fromJson(Map<String, dynamic> json) => _$ShipyardCrewFromJson(json);
}
