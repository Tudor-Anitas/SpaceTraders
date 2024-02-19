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
  Future<(int, List<System>)> listSystems(
      int? limitPerPage, int? pageToRequest) async {
    String page = pageToRequest != null ? 'page=$pageToRequest' : '';
    String limit = limitPerPage != null ? 'limit=$limitPerPage' : '';

    Response response = await dio.get("/systems?$page&$limit");
    return (
      response.statusCode!,
      List.from(response.data['data'].map((x) => System.fromMap(x)))
          as List<System>
    );
  }

  Future<(int, System)> getSystem(String systemSymbol) async {
    Response response = await dio.get('/systems/$systemSymbol');
    return (response.statusCode!, System.fromMap(response.data['data']));
  }

  Future<(int, List<Waypoint>)> listWaypointsInSystem(
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
    return (
      response.statusCode!,
      List.from(response.data['data']) as List<Waypoint>
    );
  }

  Future<(int, Waypoint)> getWaypoint(
      String systemSymbol, String waypointSymbol) async {
    Response response =
        await dio.get('/systems/$systemSymbol/waypoints/$waypointSymbol');

    return (response.statusCode!, Waypoint.fromMap(response.data['data']));
  }

  Future<(int, Market)> getMarket(
      String systemSymbol, String waypointSymbol) async {
    Response response = await dio
        .get('/systems/$systemSymbol/waypoints/$waypointSymbol/market');
    return (response.statusCode!, Market.fromMap(response.data['data']));
  }

  Future<(int, Shipyard)> getShipyard(
      String systemSymbol, String waypointSymbol) async {
    Response response = await dio
        .get('/systems/$systemSymbol/waypoints/$waypointSymbol/shipyard');
    return (response.statusCode!, Shipyard.fromMap(response.data['data']));
  }

  Future<(int, JumpGate)> getJumpGate(
      String systemSymbol, String waypointSymbol) async {
    Response response = await dio
        .get('/systems/$systemSymbol/waypoints/$waypointSymbol/jump-gate');
    return (response.statusCode!, JumpGate.fromMap(response.data['data']));
  }

  Future<(int, Construction)> getConstructionSite(
      String systemSymbol, String waypointSymbol) async {
    Response response = await dio
        .get('/systems/$systemSymbol/waypoints/$waypointSymbol/construction');
    return (response.statusCode!, Construction.fromMap(response.data['data']));
  }

  Future<(int, Construction, ShipCargo)> supplyConstructionSite(
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
      response.statusCode!,
      Construction.fromMap(data['construction']),
      ShipCargo.fromMap(data['cargo'])
    );
  }

  Future<(int, List<String>)> findLocalShipyards(String systemSymbol) async {
    Response response =
        await dio.get('/systems/$systemSymbol/waypoints?traits=SHIPYARD');

    List data = [];
    for (var waypoint in response.data['data']) {
      data.add(Waypoint.fromMap(waypoint));
    }
    // stores the symbols from all the waypoints of the system
    // each symbol (waypoint) might have a different shipyard
    List<String> symbols = [];
    for (var element in data) {
      symbols.add(element.symbol);
    }

    return (response.statusCode!, symbols);
  }
}
