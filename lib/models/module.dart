// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/requirements.dart';

part 'module.freezed.dart';
part 'module.g.dart';

@freezed
class Module with _$Module {
  const factory Module({
    @Default('') String symbol,
    @Default(0) int capacity,
    @Default(0) int range,
    @Default('') String name,
    @Default('') String description,
    @Default(Requirements()) Requirements requirements,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}

enum ModuleSymbol {
  MODULE_MINERAL_PROCESSOR_I,
  MODULE_GAS_PROCESSOR_I,
  MODULE_CARGO_HOLD_I,
  MODULE_CARGO_HOLD_II,
  MODULE_CARGO_HOLD_III,
  MODULE_CREW_QUARTERS_I,
  MODULE_ENVOY_QUARTERS_I,
  MODULE_PASSENGER_CABIN_I,
  MODULE_MICRO_REFINERY_I,
  MODULE_ORE_REFINERY_I,
  MODULE_FUEL_REFINERY_I,
  MODULE_SCIENCE_LAB_I,
  MODULE_JUMP_DRIVE_I,
  MODULE_JUMP_DRIVE_II,
  MODULE_JUMP_DRIVE_III,
  MODULE_WARP_DRIVE_I,
  MODULE_WARP_DRIVE_II,
  MODULE_WARP_DRIVE_III,
  MODULE_SHIELD_GENERATOR_I,
  MODULE_SHIELD_GENERATOR_II,
}
