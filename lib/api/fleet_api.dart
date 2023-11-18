import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/cooldown.dart';
import 'package:space_traders/models/nav.dart';
import 'package:space_traders/models/produce.dart';
import 'package:space_traders/models/refining_goods.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/ship_cargo.dart';
import 'package:space_traders/models/transaction.dart';

class FleetApi {
  Future<List<Ship>> listShips() async {
    Response response = await dio.get('/my/ships');
    List<Ship> ships = [];
    for (var element in response.data['data']) {
      Ship ship = Ship.fromMap(element);
      ships.add(ship);
    }
    return ships;
  }

  Future<(Agent, Ship, Transaction)> purchaseShip(
      ShipType shipType, String waypointSymbol) async {
    Response response = await dio.post(
      '/my/ships',
      data:
          json.encode({'shipType': shipType, 'waypointSymbol': waypointSymbol}),
    );
    Map data = response.data['data'];

    return (
      Agent.fromMap(data['agent']),
      Ship.fromMap(data['ship']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<Ship> getShip(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol');

    return Ship.fromMap(response.data['data']);
  }

  Future<ShipCargo> getShipCargo(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol/cargo');

    return ShipCargo.fromMap(response.data['data']);
  }

  Future<Nav> orbitShip(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/orbit');
    return Nav.fromMap(response.data['data']);
  }

  Future<(ShipCargo, Cooldown, RefiningGoods, RefiningGoods)> shipRefine(
      String shipSymbol, Produce produceToMake) async {
    Response response = await dio.post(
      '/my/ships/$shipSymbol/refine',
      data: json.encode(
        {'produce': produceToMake},
      ),
    );

    Map data = response.data['data'];

    return (
      ShipCargo.fromMap(data['cargo']),
      Cooldown.fromMap(data['cooldown']),
      RefiningGoods.fromMap(data['produces']),
      RefiningGoods.fromMap(data['consumed'])
    );
  }
}
