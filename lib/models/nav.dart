import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/route.dart';

class Nav extends Equatable {
  final String systemSymbol;
  final String waypointSymbol;
  final Route route;
  final String status;
  final String flightMode;
  const Nav({
    required this.systemSymbol,
    required this.waypointSymbol,
    required this.route,
    required this.status,
    required this.flightMode,
  });

  Nav copyWith({
    String? systemSymbol,
    String? waypointSymbol,
    Route? route,
    String? status,
    String? flightMode,
  }) {
    return Nav(
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

  factory Nav.fromMap(Map<String, dynamic> map) {
    return Nav(
      systemSymbol: map['systemSymbol'] ?? '',
      waypointSymbol: map['waypointSymbol'] ?? '',
      route: Route.fromMap(map['route']),
      status: map['status'] ?? '',
      flightMode: map['flightMode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Nav.fromJson(String source) => Nav.fromMap(json.decode(source));

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
