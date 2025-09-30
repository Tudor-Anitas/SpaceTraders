import 'package:freezed_annotation/freezed_annotation.dart';

part 'faction_trait.freezed.dart';
part 'faction_trait.g.dart';

@freezed
class FactionTrait with _$FactionTrait {
  const factory FactionTrait({
    @Default('') String symbol,
    @Default('') String name,
    @Default('') String description,
  }) = _FactionTrait;

  factory FactionTrait.fromJson(Map<String, dynamic> json) => _$FactionTraitFromJson(json);
}
