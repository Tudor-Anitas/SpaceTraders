// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/faction_trait.dart';

part 'faction.freezed.dart';
part 'faction.g.dart';

@freezed
class Faction with _$Faction {
  const factory Faction({
    @Default('') String symbol,
    @Default('') String name,
    @Default('') String description,
    @Default('') String headquarters,
    @Default([]) List<FactionTrait> traits,
    @Default(false) bool isRecruiting,
  }) = _Faction;

  factory Faction.fromJson(Map<String, dynamic> json) => _$FactionFromJson(json);
}

enum FactionSymbol {
  COSMIC,
  VOID,
  GALACTIC,
  QUANTUM,
  DOMINION,
  ASTRO,
  CORSAIRS,
  OBSIDIAN,
  AEGIS,
  UNITED,
  SOLITARY,
  COBALT,
  OMEGA,
  ECHO,
  LORDS,
  CULT,
  ANCIENTS,
  SHADOW,
  ETHEREAL,
}
