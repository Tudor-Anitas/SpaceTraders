import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

@freezed
class Inventory with _$Inventory {
  const factory Inventory({
    @Default('') String symbol,
    @Default('') String name,
    @Default('') String description,
    @Default(0) int units,
  }) = _Inventory;

  factory Inventory.fromJson(Map<String, dynamic> json) => _$InventoryFromJson(json);
}
