import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooldown.freezed.dart';
part 'cooldown.g.dart';

@freezed
class Cooldown with _$Cooldown {
  const factory Cooldown({
    @Default('') String shipSymbol,
    @Default(0) int totalSeconds,
    @Default(0) int remainingSeconds,
    @Default('') String expiration,
  }) = _Cooldown;

  factory Cooldown.fromJson(Map<String, dynamic> json) => _$CooldownFromJson(json);
}
