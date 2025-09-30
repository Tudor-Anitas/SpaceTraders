import 'package:freezed_annotation/freezed_annotation.dart';
import 'route.dart';

part 'ship_nav.freezed.dart';
part 'ship_nav.g.dart';

@freezed
class ShipNav with _$ShipNav {
  const factory ShipNav({
    required String systemSymbol,
    required String waypointSymbol,
    required Route route,
    required String status,
    required String flightMode,
  }) = _ShipNav;

  factory ShipNav.fromJson(Map<String, dynamic> json) =>
      _$ShipNavFromJson(json);
}

// ignore: constant_identifier_names
enum ShipNavStatus { IN_TRANSIT, IN_ORBIT, DOCKED }
