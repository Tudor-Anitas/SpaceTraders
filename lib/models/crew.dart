import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew.freezed.dart';
part 'crew.g.dart';

@freezed
class Crew with _$Crew {
  const factory Crew({
    @Default(0) int current,
    @Default(0) int requiredCrew,
    @Default(0) int capacity,
    @Default('') String rotation,
    @Default(0) int morale,
    @Default(0) int wages,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
}
