import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/shipyard_ship.dart';

part 'shipyard.freezed.dart';
part 'shipyard.g.dart';

@freezed
class Shipyard with _$Shipyard {
  const factory Shipyard({
    required String symbol,
    @Default([]) List<ShipyardShip> ships,
    @Default([]) List<String> shipTypes,
    @Default({}) Map<String, dynamic> transactions,
    String? factionSymbol,
  }) = _Shipyard;

  factory Shipyard.fromJson(Map<String, dynamic> json) =>
      _$ShipyardFromJson(json);
}