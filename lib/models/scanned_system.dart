import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanned_system.freezed.dart';
part 'scanned_system.g.dart';

@freezed
class ScannedSystem with _$ScannedSystem {
  const factory ScannedSystem({
    required String symbol,
    required String sectorSymbol,
    required String type,
    required int x,
    required int y,
    @Default(0) int distance,
  }) = _ScannedSystem;

  factory ScannedSystem.fromJson(Map<String, dynamic> json) =>
      _$ScannedSystemFromJson(json);
}
