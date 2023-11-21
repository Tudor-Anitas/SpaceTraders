import 'package:space_traders/api/agent_api.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/api/factions_api.dart';
import 'package:space_traders/api/fleet_api.dart';
import 'package:space_traders/api/systems_api.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/chart.dart';
import 'package:space_traders/models/construction.dart';
import 'package:space_traders/models/contract_deliver_good.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/cooldown.dart';
import 'package:space_traders/models/extraction.dart';
import 'package:space_traders/models/faction.dart';
import 'package:space_traders/models/fuel.dart';
import 'package:space_traders/models/jump_gate.dart';
import 'package:space_traders/models/market.dart';
import 'package:space_traders/models/mount.dart';
import 'package:space_traders/models/nav.dart';
import 'package:space_traders/models/produce.dart';
import 'package:space_traders/models/refining_goods.dart';
import 'package:space_traders/models/scanned_ship.dart';
import 'package:space_traders/models/scanned_system.dart';
import 'package:space_traders/models/scanned_waypoint.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/ship_cargo.dart';
import 'package:space_traders/models/shipyard.dart';
import 'package:space_traders/models/siphon.dart';
import 'package:space_traders/models/survey.dart';
import 'package:space_traders/models/system.dart';
import 'package:space_traders/models/transaction.dart';
import 'package:space_traders/models/waypoint.dart';
import 'package:space_traders/models/waypoint_trait.dart';
import 'package:space_traders/models/waypoint_type.dart';

class ActionsRepository {
  // Agent methods
  Future<void> register() async {
    await AgentApi().register();
  }

  Future<Agent> getMyAgentStats() async {
    return await AgentApi().getMyAgentStats();
  }

  // Contract methods
  Future<List<Contract>> listContracts() async {
    return await ContractsApi().listContracts();
  }

  Future<Contract> acceptContract(String id) async {
    return await ContractsApi().acceptContract(id);
  }

  Future<(Contract, ContractDeliverGood)> deliverGoodsToContract(
      String contractId,
      String shipSymbol,
      String tradeSymbol,
      int units) async {
    return await ContractsApi()
        .deliverGoodsToContract(contractId, shipSymbol, tradeSymbol, units);
  }

  Future<void> fulfillContract(String contractId) async {
    await ContractsApi().fulfillContract(contractId);
  }

  // Fleet methods
  Future<List<Ship>> listShips() async {
    return await FleetApi().listShips();
  }

  /// Purchase a new ship, will return updated data about [Agent] & [Ship], and a transaction
  Future<(Agent, Ship, Transaction)> purchaseShip(
      ShipType shipType, String waypointSymbol) async {
    return await FleetApi().purchaseShip(shipType, waypointSymbol);
  }

  Future<Ship> getShipDetails(String shipSymbol) async {
    return await FleetApi().getShip(shipSymbol);
  }

  Future<ShipCargo> getShipCargo(String shipSymbol) async {
    return await FleetApi().getShipCargo(shipSymbol);
  }

  Future<Nav> orbitShip(String shipSymbol) async {
    return await FleetApi().orbitShip(shipSymbol);
  }

  Future<(ShipCargo, Cooldown, RefiningGoods, RefiningGoods)> shipRefine(
      String shipSymbol, Produce produceToMake) async {
    return await FleetApi().shipRefine(shipSymbol, produceToMake);
  }

  Future<(Chart, Waypoint)> createChart(String shipSymbol) async {
    return await FleetApi().createChart(shipSymbol);
  }

  Future<Cooldown> getCooldown(String shipSymbol) async {
    return await FleetApi().getCooldown(shipSymbol);
  }

  Future<Nav> dockShip(String shipSymbol) async {
    return await FleetApi().dockShip(shipSymbol);
  }

  Future<(Cooldown, List<Survey>)> createSurvey(String shipSymbol) async {
    return await FleetApi().createSurvey(shipSymbol);
  }

  Future<(Cooldown, Extraction, ShipCargo)> extractResources(
      String shipSymbol, Survey survey) async {
    return await FleetApi().extractResources(shipSymbol, survey);
  }

  Future<(Cooldown, Siphon, ShipCargo)> siphonResources(
      String shipSymbol) async {
    return await FleetApi().siphonResources(shipSymbol);
  }

  Future<(Cooldown, Extraction, ShipCargo)> extractResourcesWithSurvery(
      String shipSymbol, Survey survey) async {
    return await FleetApi().extractResourcesWithSurvery(shipSymbol, survey);
  }

  Future<ShipCargo> jettisonCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    return await FleetApi().jettisonCargo(shipSymbol, goodsSymbol, units);
  }

  Future<(Nav, Cooldown, Transaction)> jumpShip(
      String shipSymbol, Waypoint waypoint) async {
    return await FleetApi().jumpShip(shipSymbol, waypoint);
  }

  Future<(Fuel, Nav)> navigateShip(String shipSymbol, Waypoint waypoint) async {
    return await FleetApi().navigateShip(shipSymbol, waypoint);
  }

  Future<Nav> patchShipNav(String shipSymbol, Nav nav) async {
    return await FleetApi().patchShipNav(shipSymbol, nav);
  }

  Future<Nav> getShipNav(String shipSymbol) async {
    return await FleetApi().getShipNav(shipSymbol);
  }

  Future<(Fuel, Nav)> warpShip(String shipSymbol, Waypoint waypoint) async {
    return await FleetApi().warpShip(shipSymbol, waypoint);
  }

  Future<(Agent, ShipCargo, Transaction)> sellCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    return await FleetApi().sellCargo(shipSymbol, goodsSymbol, units);
  }

  Future<(Cooldown, List<ScannedSystem>)> scanSytems(String shipSymbol) async {
    return await FleetApi().scanSystems(shipSymbol);
  }

  Future<(Cooldown, List<ScannedWaypoint>)> scanWaypoints(
      String shipSymbol) async {
    return FleetApi().scanWaypoints(shipSymbol);
  }

  Future<(Cooldown, List<ScannedShip>)> scanShips(String shipSymbol) async {
    return await FleetApi().scanShips(shipSymbol);
  }

  Future<(Agent, Fuel, Transaction)> refuelShip(
      String shipSymbol, int units, bool? shouldRefuelFromCargo) async {
    return await FleetApi()
        .refuelShip(shipSymbol, units, shouldRefuelFromCargo);
  }

  Future<(Agent, ShipCargo, Transaction)> purchaseCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    return await FleetApi().purchaseCargo(shipSymbol, goodsSymbol, units);
  }

  Future<ShipCargo> transferCargo(String shipSymbol, String tradeSymbol,
      int units, String shipSymbolToTransferTo) async {
    return await FleetApi()
        .transferCargo(shipSymbol, tradeSymbol, units, shipSymbolToTransferTo);
  }

  Future<Contract> negotiateContract(String shipSymbol) async {
    return await FleetApi().negotiateContract(shipSymbol);
  }

  Future<List<Mount>> getMounts(String shipSymbol) async {
    return await FleetApi().getMounts(shipSymbol);
  }

  Future<(Agent, List<Mount>, ShipCargo, Transaction)> installMount(
      String shipSymbol, Mount mountToInstall) async {
    return await FleetApi().installMount(shipSymbol, mountToInstall);
  }

  Future<(Agent, List<Mount>, ShipCargo, Transaction)> removeMount(
      String shipSymbol, Mount mountToInstall) async {
    return await FleetApi().removeMount(shipSymbol, mountToInstall);
  }

  Future<List<Faction>> listFactions() async {
    return await FactionsApi().listFactions();
  }

  Future<Faction> getFaction(String factionSymbol) async {
    return await FactionsApi().getFaction(factionSymbol);
  }

  Future<List<System>> listSystems(
      int? limitPerPage, int? pageToRequest) async {
    return await SystemsApi().listSystems(limitPerPage, pageToRequest);
  }

  Future<System> getSystem(String systemSymbol) async {
    return await SystemsApi().getSystem(systemSymbol);
  }

  Future<List<Waypoint>> listWaypointsInSystem(
      String systemSymbol,
      int? limitPerPage,
      int? pageToRequest,
      WaypointTraitSymbol? trait,
      WaypointType? type) async {
    return await SystemsApi().listWaypointsInSystem(
        systemSymbol, limitPerPage, pageToRequest, trait, type);
  }

  Future<Waypoint> getWaypoint(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getWaypoint(systemSymbol, waypointSymbol);
  }

  Future<Market> getMarket(String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getMarket(systemSymbol, waypointSymbol);
  }

  Future<Shipyard> getShipyard(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getShipyard(systemSymbol, waypointSymbol);
  }

  Future<JumpGate> getJumpGate(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getJumpGate(systemSymbol, waypointSymbol);
  }

  Future<Construction> getConstructionSite(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getConstructionSite(systemSymbol, waypointSymbol);
  }

  Future<(Construction, ShipCargo)> supplyConstructionSite(
      String systemSymbol,
      String waypointSymbol,
      String shipSymbol,
      String tradeSymbol,
      int units) async {
    return await SystemsApi().supplyConstructionSite(
        systemSymbol, waypointSymbol, shipSymbol, tradeSymbol, units);
  }
}
