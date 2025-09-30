import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/waypoint.dart';

part 'system.freezed.dart';
part 'system.g.dart';

@freezed
class System with _$System {
  const factory System({
    required String symbol,
    required String sectorSymbol,
    required String type,
    required int x,
    required int y,
    @Default([]) List<Waypoint> waypoints,
    @Default([]) List<String> factions,
  }) = _System;

  factory System.fromJson(Map<String, dynamic> json) => _$SystemFromJson(json);
}