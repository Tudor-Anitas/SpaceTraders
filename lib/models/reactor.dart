// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/requirements.dart';

part 'reactor.freezed.dart';
part 'reactor.g.dart';

@freezed
class Reactor with _$Reactor {
  const factory Reactor({
    @Default('') String symbol,
    @Default('') String name,
    @Default('') String description,
    @Default(0) int condition,
    @Default(0) int integrity,
    @Default(0) int powerOutput,
    @Default(Requirements()) Requirements requirements,
  }) = _Reactor;

  factory Reactor.fromJson(Map<String, dynamic> json) => _$ReactorFromJson(json);
}

enum ReactorSymbol {
  REACTOR_SOLAR_I,
  REACTOR_FUSION_I,
  REACTOR_FISSION_I,
  REACTOR_CHEMICAL_I,
  REACTOR_ANTIMATTER_I,
}
