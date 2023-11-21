import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/construction.dart';
import 'package:space_traders/models/jump_gate.dart';
import 'package:space_traders/models/market.dart';
import 'package:space_traders/models/ship_cargo.dart';
import 'package:space_traders/models/shipyard.dart';
import 'package:space_traders/models/system.dart';
import 'package:space_traders/models/waypoint.dart';
import 'package:space_traders/models/waypoint_trait.dart';
import 'package:space_traders/models/waypoint_type.dart';

class SystemsApi {
  Future<List<System>> listSystems(
      int? limitPerPage, int? pageToRequest) async {
    String page = pageToRequest != null ? 'page=$pageToRequest' : '';
    String limit = limitPerPage != null ? 'limit=$limitPerPage' : '';

    Response response = await dio.get("/systems?$page&$limit");
    return List.from(response.data['data'].map((x) => System.fromMap(x)));
  }

  Future<System> getSystem(String systemSymbol) async {
    Response response = await dio.get('/systems/$systemSymbol');
    return System.fromMap(response.data['data']);
  }

  Future<List<Waypoint>> listWaypointsInSystem(
      String systemSymbol,
      int? limitPerPage,
      int? pageToRequest,
      WaypointTraitSymbol? trait,
      WaypointType? type) async {
    String page = pageToRequest != null ? 'page=$pageToRequest' : '';
    String limit = limitPerPage != null ? 'limit=$limitPerPage' : '';
    String traitFilter = trait != null ? 'traits=${trait.name}' : '';
    String typeFilter = type != null ? 'type=${type.name}' : '';

    Response response = await dio.get(
        '/systems/$systemSymbol/waypoints?$page&$limit&$traitFilter&$typeFilter');
    return List.from(response.data['data']);
  }

  Future<Waypoint> getWaypoint(
      String systemSymbol, String waypointSymbol) async {
    Response response =
        await dio.get('/systems/$systemSymbol/waypoints/$waypointSymbol');

    return Waypoint.fromMap(response.data['data']);
  }

  Future<Market> getMarket(String systemSymbol, String waypointSymbol) async {
    Response response = await dio
        .get('/systems/$systemSymbol/waypoints/$waypointSymbol/market');
    return Market.fromMap(response.data['data']);
  }

  Future<Shipyard> getShipyard(
      String systemSymbol, String waypointSymbol) async {
    Response response = await dio
        .get('/systems/$systemSymbol/waypoints/$waypointSymbol/shipyard');
    return Shipyard.fromMap(response.data['data']);
  }

  Future<JumpGate> getJumpGate(
      String systemSymbol, String waypointSymbol) async {
    Response response = await dio
        .get('/systems/$systemSymbol/waypoints/$waypointSymbol/jump-gate');
    return JumpGate.fromMap(response.data['data']);
  }

  Future<Construction> getConstructionSite(
      String systemSymbol, String waypointSymbol) async {
    Response response = await dio
        .get('/systems/$systemSymbol/waypoints/$waypointSymbol/construction');
    return Construction.fromMap(response.data['data']);
  }

  Future<(Construction, ShipCargo)> supplyConstructionSite(
      String systemSymbol,
      String waypointSymbol,
      String shipSymbol,
      String tradeSymbol,
      int units) async {
    Response response = await dio.post(
        '/systems/$systemSymbol/waypoints/$waypointSymbol/construction/supply',
        data: json.encode({
          'shipSymbol': shipSymbol,
          'tradeSymbol': tradeSymbol,
          'units': units
        }));

    Map data = response.data['data'];

    return (
      Construction.fromMap(data['construction']),
      ShipCargo.fromMap(data['cargo'])
    );
  }
}
