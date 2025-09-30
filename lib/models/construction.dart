import 'package:freezed_annotation/freezed_annotation.dart';
import 'construction_material.dart';

part 'construction.freezed.dart';
part 'construction.g.dart';

@freezed
class Construction with _$Construction {
  const factory Construction({
    required bool isComplete,
    @Default([]) List<ConstructionMaterial> materials,
  }) = _Construction;

  factory Construction.fromJson(Map<String, dynamic> json) =>
      _$ConstructionFromJson(json);
}
