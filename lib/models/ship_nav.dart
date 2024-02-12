import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/route.dart';

class ShipNav extends Equatable {
  final String systemSymbol;
  final String waypointSymbol;
  final Route route;
  final String status;
  final String flightMode;
  const ShipNav({
    required this.systemSymbol,
    required this.waypointSymbol,
    required this.route,
    required this.status,
    required this.flightMode,
  });

  ShipNav copyWith({
    String? systemSymbol,
    String? waypointSymbol,
    Route? route,
    String? status,
    String? flightMode,
  }) {
    return ShipNav(
      systemSymbol: systemSymbol ?? this.systemSymbol,
      waypointSymbol: waypointSymbol ?? this.waypointSymbol,
      route: route ?? this.route,
      status: status ?? this.status,
      flightMode: flightMode ?? this.flightMode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'systemSymbol': systemSymbol,
      'waypointSymbol': waypointSymbol,
      'route': route.toMap(),
      'status': status,
      'flightMode': flightMode,
    };
  }

  factory ShipNav.fromMap(Map<String, dynamic> map) {
    return ShipNav(
      systemSymbol: map['systemSymbol'] ?? '',
      waypointSymbol: map['waypointSymbol'] ?? '',
      route: Route.fromMap(map['route'] ?? ''),
      status: map['status'] ?? '',
      flightMode: map['flightMode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ShipNav.fromJson(String source) => ShipNav.fromMap(json.decode(source));

  @override
  String toString() {
    return 'systemSymbol: $systemSymbol\nwaypointSymbol: $waypointSymbol\nroute: $route\nstatus: $status,\nflightMode: $flightMode';
  }

  @override
  List<Object> get props {
    return [
      systemSymbol,
      waypointSymbol,
      route,
      status,
      flightMode,
    ];
  }
}
