import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/chart.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/cooldown.dart';
import 'package:space_traders/models/extraction.dart';
import 'package:space_traders/models/fuel.dart';
import 'package:space_traders/models/mount.dart';
import 'package:space_traders/models/nav.dart';
import 'package:space_traders/models/produce.dart';
import 'package:space_traders/models/refining_goods.dart';
import 'package:space_traders/models/scanned_ship.dart';
import 'package:space_traders/models/scanned_system.dart';
import 'package:space_traders/models/scanned_waypoint.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/ship_cargo.dart';
import 'package:space_traders/models/siphon.dart';
import 'package:space_traders/models/survey.dart';
import 'package:space_traders/models/transaction.dart';
import 'package:space_traders/models/waypoint.dart';

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

  Future<(Chart, Waypoint)> createChart(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/chart');
    Map data = response.data['data'];
    return (
      Chart.fromMap(data['chart']),
      Waypoint.fromMap(
        data['waypoint'],
      ),
    );
  }

  Future<Cooldown> getCooldown(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol/cooldown');
    return Cooldown.fromMap(response.data['data']);
  }

  Future<Nav> dockShip(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/dock');
    return Nav.fromMap(response.data['data']);
  }

  Future<(Cooldown, List<Survey>)> createSurvey(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/survey');
    Map data = response.data['data'];
    return (
      Cooldown.fromMap(data['cooldown']),
      List.from(
        data['surveys'].map(
          (x) => Survey.fromMap(x),
        ),
      ) as List<Survey>,
    );
  }

  Future<(Cooldown, Extraction, ShipCargo)> extractResources(
      String shipSymbol, Survey survey) async {
    Response response = await dio.post(
      '/my/ships/$shipSymbol/extract',
      data: json.encode(
        {'survey': survey},
      ),
    );

    Map data = response.data['data'];

    return (
      Cooldown.fromMap(data['cooldown']),
      Extraction.fromMap(data['extraction']),
      ShipCargo.fromMap(data['cargo']),
    );
  }

  Future<(Cooldown, Siphon, ShipCargo)> siphonResources(
      String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/siphon');

    Map data = response.data['data'];

    return (
      Cooldown.fromMap(data['cooldown']),
      Siphon.fromMap(data['siphon']),
      ShipCargo.fromMap(data['cargo']),
    );
  }

  Future<(Cooldown, Extraction, ShipCargo)> extractResourcesWithSurvery(
      String shipSymbol, Survey survey) async {
    Response response = await dio.post(
      '/my/ships/$shipSymbol/extract/survey',
      data: json.encode(
        {
          'signature': survey.signature,
          'symbol': survey.symbol,
          'deposits': survey.deposits,
          'expiration': survey.expiration,
          'size': survey.size
        },
      ),
    );

    Map data = response.data['data'];

    return (
      Cooldown.fromMap(data['cooldown']),
      Extraction.fromMap(data['extraction']),
      ShipCargo.fromMap(data['cargo']),
    );
  }

  Future<ShipCargo> jettisonCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    Response response = await dio.post(
      '/my/ships/$shipSymbol/jettison',
      data: json.encode(
        {'symbol': goodsSymbol, 'units': units},
      ),
    );
    return ShipCargo.fromMap(response.data['data']);
  }

  Future<(Nav, Cooldown, Transaction)> jumpShip(
      String shipSymbol, Waypoint waypoint) async {
    Response response = await dio.post('/my/ships/$shipSymbol/jump',
        data: json.encode({'waypointSymbol': waypoint.symbol}));

    Map data = response.data['data'];

    return (
      Nav.fromMap(data['nav']),
      Cooldown.fromMap(data['cooldown']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<(Fuel, Nav)> navigateShip(String shipSymbol, Waypoint waypoint) async {
    Response response = await dio.post('/my/ships/$shipSymbol/navigate',
        data: json.encode({'waypointSymbol': waypoint.symbol}));

    Map data = response.data['data'];

    return (
      Fuel.fromMap(data['fuel']),
      Nav.fromMap(data['nav']),
    );
  }

  Future<Nav> patchShipNav(String shipSymbol, Nav nav) async {
    Response response = await dio.patch('/my/ships/$shipSymbol/nav',
        data: json.encode({'flightMode': nav.flightMode}));

    return Nav.fromMap(response.data['data']);
  }

  Future<Nav> getShipNav(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol/nav');

    return Nav.fromMap(response.data['data']);
  }

  Future<(Fuel, Nav)> warpShip(String shipSymbol, Waypoint waypoint) async {
    Response response = await dio.post('/my/ships/$shipSymbol/warp',
        data: json.encode({'waypointSymbol': waypoint.symbol}));

    Map data = response.data['data'];

    return (
      Fuel.fromMap(data['fuel']),
      Nav.fromMap(data['nav']),
    );
  }

  Future<(Agent, ShipCargo, Transaction)> sellCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    Response response = await dio.post('/my/ships/$shipSymbol/sell',
        data: json.encode({
          'symbol': goodsSymbol,
          'units': units,
        }));

    Map data = response.data['data'];

    return (
      Agent.fromMap(data['agent']),
      ShipCargo.fromMap(data['cargo']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<(Cooldown, List<ScannedSystem>)> scanSystems(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/scan/systems');
    Map data = response.data['data'];

    return (
      Cooldown.fromMap(data['cooldown']),
      List.from(
        data['systems'].map(
          (x) => ScannedSystem.fromMap(x),
        ),
      ) as List<ScannedSystem>,
    );
  }

  Future<(Cooldown, List<ScannedWaypoint>)> scanWaypoints(
      String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/scan/waypoints');
    Map data = response.data['data'];

    return (
      Cooldown.fromMap(data['cooldown']),
      List.from(data['waypoints'].map((x) => ScannedWaypoint.fromMap(x)))
          as List<ScannedWaypoint>,
    );
  }

  Future<(Cooldown, List<ScannedShip>)> scanShips(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/scan/ships');
    Map data = response.data['data'];
    return (
      Cooldown.fromMap(data['cooldown']),
      List.from(data['ships'].map((x) => ScannedShip.fromMap(x)))
          as List<ScannedShip>
    );
  }

  Future<(Agent, Fuel, Transaction)> refuelShip(
      String shipSymbol, int units, bool? shouldRefuelFromCargo) async {
    Response response = await dio.post('/my/ships/$shipSymbol/refuel',
        data: json.encode(
            {'units': units, 'fromCargo': shouldRefuelFromCargo ?? false}));

    Map data = response.data['data'];

    return (
      Agent.fromMap(data['agent']),
      Fuel.fromMap(data['fuel']),
      Transaction.fromMap(data['transaction']),
    );
  }

  Future<(Agent, ShipCargo, Transaction)> purchaseCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    Response response = await dio.post('/my/ships/$shipSymbol/purchase',
        data: json.encode({'symbol': goodsSymbol, 'units': units}));
    Map data = response.data['data'];

    return (
      Agent.fromMap(data['agent']),
      ShipCargo.fromMap(data['cargo']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<ShipCargo> transferCargo(String shipSymbol, String tradeSymbol,
      int units, String shipSymbolToTransferTo) async {
    Response response = await dio.post('/my/ships/$shipSymbol/transfer',
        data: json.encode({
          'tradeSymbol': tradeSymbol,
          'units': units,
          'shipSymbol': shipSymbolToTransferTo
        }));

    return ShipCargo.fromMap(response.data['data']['cargo']);
  }

  Future<Contract> negotiateContract(String shipSymbol) async {
    Response response =
        await dio.post('/my/ships/$shipSymbol/negotiate/contract');
    return Contract.fromMap(response.data['data']['contract']);
  }

  Future<List<Mount>> getMounts(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol/mounts');
    return List.from(response.data['data'].map((x) => Mount.fromMap(x)));
  }

  Future<(Agent, List<Mount>, ShipCargo, Transaction)> installMount(
      String shipSymbol, Mount mountToInstall) async {
    Response response = await dio.post('/my/ships/$shipSymbol/mounts/install',
        data: json.encode({'symbol': mountToInstall.symbol}));
    Map data = response.data['data'];

    return (
      Agent.fromMap(data['agent']),
      List.from(
        data['mounts'].map((x) => Mount.fromMap(x)),
      ) as List<Mount>,
      ShipCargo.fromMap(data['cargo']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<(Agent, List<Mount>, ShipCargo, Transaction)> removeMount(
      String shipSymbol, Mount mountToBeRemoved) async {
    Response response = await dio.post('/my/ships/$shipSymbol/mounts/remove',
        data: json.encode({'symbol': mountToBeRemoved.symbol}));
    Map data = response.data['data'];

    return (
      Agent.fromMap(data['agent']),
      List.from(
        data['mounts'].map((x) => Mount.fromMap(x)),
      ) as List<Mount>,
      ShipCargo.fromMap(data['cargo']),
      Transaction.fromMap(data['transaction'])
    );
  }
}
