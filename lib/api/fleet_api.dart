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
import 'package:space_traders/models/ship_nav.dart';
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
  Future<(int, List<Ship>)> listShips() async {
    Response response = await dio.get('/my/ships');
    List<Ship> ships = [];
    for (var element in response.data['data']) {
      Ship ship = Ship.fromMap(element);
      ships.add(ship);
    }
    return (response.statusCode!, ships);
  }

  Future<(int, Agent, Ship, Transaction)> purchaseShip(
      ShipType shipType, String waypointSymbol) async {
        print('mata');
    Response response = await dio.post(
      '/my/ships',
      data: json.encode(
          {'shipType': shipType.name, 'waypointSymbol': waypointSymbol}),
    );
    Map data = response.data['data'];

    return (
      response.statusCode!,
      Agent.fromMap(data['agent']),
      Ship.fromMap(data['ship']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<(int, Ship)> getShip(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol');

    return (response.statusCode!, Ship.fromMap(response.data['data']));
  }

  Future<(int, ShipCargo)> getShipCargo(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol/cargo');

    return (response.statusCode!, ShipCargo.fromMap(response.data['data']));
  }

  Future<(int, ShipNav)> orbitShip(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/orbit');
    return (response.statusCode!, ShipNav.fromMap(response.data['data']));
  }

  Future<(int, ShipCargo, Cooldown, RefiningGoods, RefiningGoods)> shipRefine(
      String shipSymbol, Produce produceToMake) async {
    Response response = await dio.post(
      '/my/ships/$shipSymbol/refine',
      data: json.encode(
        {'produce': produceToMake},
      ),
    );

    Map data = response.data['data'];

    return (
      response.statusCode!,
      ShipCargo.fromMap(data['cargo']),
      Cooldown.fromMap(data['cooldown']),
      RefiningGoods.fromMap(data['produces']),
      RefiningGoods.fromMap(data['consumed'])
    );
  }

  Future<(int, Chart, Waypoint)> createChart(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/chart');
    Map data = response.data['data'];
    return (
      response.statusCode!,
      Chart.fromMap(data['chart']),
      Waypoint.fromMap(
        data['waypoint'],
      ),
    );
  }

  Future<(int, Cooldown)> getCooldown(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol/cooldown');
    return (response.statusCode!, Cooldown.fromMap(response.data['data']));
  }

  Future<(int, ShipNav)> dockShip(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/dock');
    return (response.statusCode!, ShipNav.fromMap(response.data['data']));
  }

  Future<(int, Cooldown, List<Survey>)> createSurvey(String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/survey');
    Map data = response.data['data'];
    return (
      response.statusCode!,
      Cooldown.fromMap(data['cooldown']),
      List.from(
        data['surveys'].map(
          (x) => Survey.fromMap(x),
        ),
      ) as List<Survey>,
    );
  }

  Future<(int, Cooldown, Extraction, ShipCargo)> extractResources(
      String shipSymbol, Survey survey) async {
    Response response = await dio.post(
      '/my/ships/$shipSymbol/extract',
      data: json.encode(
        {'survey': survey},
      ),
    );

    Map data = response.data['data'];

    return (
      response.statusCode!,
      Cooldown.fromMap(data['cooldown']),
      Extraction.fromMap(data['extraction']),
      ShipCargo.fromMap(data['cargo']),
    );
  }

  Future<(int, Cooldown, Siphon, ShipCargo)> siphonResources(
      String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/siphon');

    Map data = response.data['data'];

    return (
      response.statusCode!,
      Cooldown.fromMap(data['cooldown']),
      Siphon.fromMap(data['siphon']),
      ShipCargo.fromMap(data['cargo']),
    );
  }

  Future<(int, Cooldown, Extraction, ShipCargo)> extractResourcesWithSurvery(
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
      response.statusCode!,
      Cooldown.fromMap(data['cooldown']),
      Extraction.fromMap(data['extraction']),
      ShipCargo.fromMap(data['cargo']),
    );
  }

  Future<(int, ShipCargo)> jettisonCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    Response response = await dio.post(
      '/my/ships/$shipSymbol/jettison',
      data: json.encode(
        {'symbol': goodsSymbol, 'units': units},
      ),
    );
    return (response.statusCode!, ShipCargo.fromMap(response.data['data']));
  }

  Future<(int, ShipNav, Cooldown, Transaction)> jumpShip(
      String shipSymbol, Waypoint waypoint) async {
    Response response = await dio.post('/my/ships/$shipSymbol/jump',
        data: json.encode({'waypointSymbol': waypoint.symbol}));

    Map data = response.data['data'];

    return (
      response.statusCode!,
      ShipNav.fromMap(data['nav']),
      Cooldown.fromMap(data['cooldown']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<(int, Fuel, ShipNav)> navigateShip(
      String shipSymbol, Waypoint waypoint) async {
    Response response = await dio.post('/my/ships/$shipSymbol/navigate',
        data: json.encode({'waypointSymbol': waypoint.symbol}));

    Map data = response.data['data'];

    return (
      response.statusCode!,
      Fuel.fromMap(data['fuel']),
      ShipNav.fromMap(data['nav']),
    );
  }

  Future<(int, ShipNav)> patchShipNav(String shipSymbol, ShipNav nav) async {
    Response response = await dio.patch('/my/ships/$shipSymbol/nav',
        data: json.encode({'flightMode': nav.flightMode}));

    return (response.statusCode!, ShipNav.fromMap(response.data['data']));
  }

  Future<(int, ShipNav)> getShipNav(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol/nav');

    return (response.statusCode!, ShipNav.fromMap(response.data['data']));
  }

  Future<(int, Fuel, ShipNav)> warpShip(
      String shipSymbol, Waypoint waypoint) async {
    Response response = await dio.post('/my/ships/$shipSymbol/warp',
        data: json.encode({'waypointSymbol': waypoint.symbol}));

    Map data = response.data['data'];

    return (
      response.statusCode!,
      Fuel.fromMap(data['fuel']),
      ShipNav.fromMap(data['nav']),
    );
  }

  Future<(int, Agent, ShipCargo, Transaction)> sellCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    Response response = await dio.post('/my/ships/$shipSymbol/sell',
        data: json.encode({
          'symbol': goodsSymbol,
          'units': units,
        }));

    Map data = response.data['data'];

    return (
      response.statusCode!,
      Agent.fromMap(data['agent']),
      ShipCargo.fromMap(data['cargo']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<(int, Cooldown, List<ScannedSystem>)> scanSystems(
      String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/scan/systems');
    Map data = response.data['data'];

    return (
      response.statusCode!,
      Cooldown.fromMap(data['cooldown']),
      List.from(
        data['systems'].map(
          (x) => ScannedSystem.fromMap(x),
        ),
      ) as List<ScannedSystem>,
    );
  }

  Future<(int, Cooldown, List<ScannedWaypoint>)> scanWaypoints(
      String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/scan/waypoints');
    Map data = response.data['data'];

    return (
      response.statusCode!,
      Cooldown.fromMap(data['cooldown']),
      List.from(data['waypoints'].map((x) => ScannedWaypoint.fromMap(x)))
          as List<ScannedWaypoint>,
    );
  }

  Future<(int, Cooldown, List<ScannedShip>)> scanShips(
      String shipSymbol) async {
    Response response = await dio.post('/my/ships/$shipSymbol/scan/ships');
    Map data = response.data['data'];
    return (
      response.statusCode!,
      Cooldown.fromMap(data['cooldown']),
      List.from(data['ships'].map((x) => ScannedShip.fromMap(x)))
          as List<ScannedShip>
    );
  }

  Future<(int, Agent, Fuel, Transaction)> refuelShip(
      String shipSymbol, int units, bool? shouldRefuelFromCargo) async {
    Response response = await dio.post('/my/ships/$shipSymbol/refuel',
        data: json.encode(
            {'units': units, 'fromCargo': shouldRefuelFromCargo ?? false}));

    Map data = response.data['data'];

    return (
      response.statusCode!,
      Agent.fromMap(data['agent']),
      Fuel.fromMap(data['fuel']),
      Transaction.fromMap(data['transaction']),
    );
  }

  Future<(int, Agent, ShipCargo, Transaction)> purchaseCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    Response response = await dio.post('/my/ships/$shipSymbol/purchase',
        data: json.encode({'symbol': goodsSymbol, 'units': units}));
    Map data = response.data['data'];

    return (
      response.statusCode!,
      Agent.fromMap(data['agent']),
      ShipCargo.fromMap(data['cargo']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<(int, ShipCargo)> transferCargo(String shipSymbol, String tradeSymbol,
      int units, String shipSymbolToTransferTo) async {
    Response response = await dio.post('/my/ships/$shipSymbol/transfer',
        data: json.encode({
          'tradeSymbol': tradeSymbol,
          'units': units,
          'shipSymbol': shipSymbolToTransferTo
        }));

    return (
      response.statusCode!,
      ShipCargo.fromMap(response.data['data']['cargo'])
    );
  }

  Future<(int, Contract)> negotiateContract(String shipSymbol) async {
    Response response =
        await dio.post('/my/ships/$shipSymbol/negotiate/contract');
    return (
      response.statusCode!,
      Contract.fromMap(response.data['data']['contract'])
    );
  }

  Future<(int, List<Mount>)> getMounts(String shipSymbol) async {
    Response response = await dio.get('/my/ships/$shipSymbol/mounts');
    return (
      response.statusCode!,
      List.from(response.data['data'].map((x) => Mount.fromMap(x)))
          as List<Mount>
    );
  }

  Future<(int, Agent, List<Mount>, ShipCargo, Transaction)> installMount(
      String shipSymbol, Mount mountToInstall) async {
    Response response = await dio.post('/my/ships/$shipSymbol/mounts/install',
        data: json.encode({'symbol': mountToInstall.symbol}));
    Map data = response.data['data'];

    return (
      response.statusCode!,
      Agent.fromMap(data['agent']),
      List.from(
        data['mounts'].map((x) => Mount.fromMap(x)),
      ) as List<Mount>,
      ShipCargo.fromMap(data['cargo']),
      Transaction.fromMap(data['transaction'])
    );
  }

  Future<(int, Agent, List<Mount>, ShipCargo, Transaction)> removeMount(
      String shipSymbol, Mount mountToBeRemoved) async {
    Response response = await dio.post('/my/ships/$shipSymbol/mounts/remove',
        data: json.encode({'symbol': mountToBeRemoved.symbol}));
    Map data = response.data['data'];

    return (
      response.statusCode!,
      Agent.fromMap(data['agent']),
      List.from(
        data['mounts'].map((x) => Mount.fromMap(x)),
      ) as List<Mount>,
      ShipCargo.fromMap(data['cargo']),
      Transaction.fromMap(data['transaction'])
    );
  }
}
