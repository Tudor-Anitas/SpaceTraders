import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/inventory.dart';

part 'ship_cargo.freezed.dart';
part 'ship_cargo.g.dart';

@freezed
class ShipCargo with _$ShipCargo {
  const factory ShipCargo({
    @Default(0) int capacity,
    @Default(0) int units,
    @Default([]) List<Inventory> inventory,
  }) = _ShipCargo;

  factory ShipCargo.fromJson(Map<String, dynamic> json) => _$ShipCargoFromJson(json);
}
