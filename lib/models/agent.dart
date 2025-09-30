import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent.freezed.dart';
part 'agent.g.dart';

@freezed
class Agent with _$Agent {
  const factory Agent({
    @Default('') String accountId,
    @Default('') String symbol,
    @Default('') String headquarters,
    @Default(0) int credits,
    @Default('') String startingFaction,
    @Default(0) int shipCount,
  }) = _Agent;

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);

  factory Agent.empty() => const Agent();
}
