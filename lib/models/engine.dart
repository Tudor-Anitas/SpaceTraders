// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/requirements.dart';

part 'engine.freezed.dart';
part 'engine.g.dart';

@freezed
class Engine with _$Engine {
  const factory Engine({
    @Default('') String symbol,
    @Default('') String name,
    @Default('') String description,
    @Default(0) int condition,
    @Default(0) int integrity,
    @Default(0) int speed,
    @Default(Requirements()) Requirements requirements,
  }) = _Engine;

  factory Engine.fromJson(Map<String, dynamic> json) => _$EngineFromJson(json);
}

enum EngineSymbol {
  ENGINE_IMPULSE_DRIVE_I,
  ENGINE_ION_DRIVE_I,
  ENGINE_ION_DRIVE_II,
  ENGINE_HYPER_DRIVE_I,
}
