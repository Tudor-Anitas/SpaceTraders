// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/requirements.dart';

part 'mount.freezed.dart';
part 'mount.g.dart';

@freezed
class Mount with _$Mount {
  const factory Mount({
    @Default('') String symbol,
    @Default('') String name,
    @Default('') String description,
    @Default(0) int strength,
    @Default([]) List<String> deposits,
    @Default(Requirements()) Requirements requirements,
  }) = _Mount;

  factory Mount.fromJson(Map<String, dynamic> json) => _$MountFromJson(json);
}

enum MountSymbol {
  MOUNT_GAS_SIPHON_I,
  MOUNT_GAS_SIPHON_II,
  MOUNT_GAS_SIPHON_III,
  MOUNT_SURVEYOR_I,
  MOUNT_SURVEYOR_II,
  MOUNT_SURVEYOR_III,
  MOUNT_SENSOR_ARRAY_I,
  MOUNT_SENSOR_ARRAY_II,
  MOUNT_SENSOR_ARRAY_III,
  MOUNT_MINING_LASER_I,
  MOUNT_MINING_LASER_II,
  MOUNT_MINING_LASER_III,
  MOUNT_LASER_CANNON_I,
  MOUNT_MISSILE_LAUNCHER_I,
  MOUNT_TURRET_I,
}

enum MountDeposit {
  QUARTZ_SAND,
  SILICON_CRYSTALS,
  PRECIOUS_STONES,
  ICE_WATER,
  AMMONIA_ICE,
  IRON_ORE,
  COPPER_ORE,
  SILVER_ORE,
  ALUMINUM_ORE,
  GOLD_ORE,
  PLATINUM_ORE,
  DIAMONDS,
  URANITE_ORE,
  MERITIUM_ORE,
}
