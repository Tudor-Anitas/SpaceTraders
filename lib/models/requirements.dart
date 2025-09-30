import 'package:freezed_annotation/freezed_annotation.dart';

part 'requirements.freezed.dart';
part 'requirements.g.dart';

@freezed
class Requirements with _$Requirements {
  const factory Requirements({
    @Default(0) int power,
    @Default(0) int crew,
    @Default(0) int slots,
  }) = _Requirements;

  factory Requirements.fromJson(Map<String, dynamic> json) => _$RequirementsFromJson(json);
}
