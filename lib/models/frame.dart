// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/requirements.dart';

part 'frame.freezed.dart';
part 'frame.g.dart';

@freezed
class Frame with _$Frame {
  const factory Frame({
    @Default('') String symbol,
    @Default('') String name,
    @Default('') String description,
    @Default(0.0) double condition,
    @Default(0.0) double integrity,
    @Default(0) int moduleSlots,
    @Default(0) int mountingPoints,
    @Default(0) int fuelCapacity,
    @Default(Requirements()) Requirements requirements,
  }) = _Frame;

  factory Frame.fromJson(Map<String, dynamic> json) => _$FrameFromJson(json);
}

enum FrameSymbol {
  FRAME_PROBE,
  FRAME_DRONE,
  FRAME_INTERCEPTOR,
  FRAME_RACER,
  FRAME_FIGHTER,
  FRAME_FRIGATE,
  FRAME_SHUTTLE,
  FRAME_EXPLORER,
  FRAME_MINER,
  FRAME_LIGHT_FREIGHTER,
  FRAME_HEAVY_FREIGHTER,
  FRAME_TRANSPORT,
  FRAME_DESTROYER,
  FRAME_CRUISER,
  FRAME_CARRIER,
}
