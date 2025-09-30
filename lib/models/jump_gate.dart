import 'package:freezed_annotation/freezed_annotation.dart';

part 'jump_gate.freezed.dart';
part 'jump_gate.g.dart';

@freezed
class JumpGate with _$JumpGate {
  const factory JumpGate({
    @Default([]) List<String> connections,
  }) = _JumpGate;

  factory JumpGate.fromJson(Map<String, dynamic> json) => _$JumpGateFromJson(json);
}
