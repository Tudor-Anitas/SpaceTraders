import 'package:space_traders/api/agent_api.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/api/factions_api.dart';
import 'package:space_traders/api/fleet_api.dart';
import 'package:space_traders/api/local_storage.dart';
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
import 'package:space_traders/models/ship_nav.dart';
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
  Future<String> getToken() async {
    return await LocalStorage().getToken();
  }

  // Agent methods
  Future<(int, Agent, Contract, Faction, Ship)> register(
      String name, FactionSymbol factionSymbol) async {
    var (statusCode, agent, contract, faction, ship, token) =
        await AgentApi().register(name, factionSymbol);

    await LocalStorage().storeToken(token);
    return (statusCode, agent, contract, faction, ship);
  }

  Future<(Agent?, List<Contract>?, List<Ship>?)> getLoginData() async {
    final (agentCode, agent) = await AgentApi().getMyAgentStats();
    if (agentCode != 200) return (null, null, null);
    final (contractsCode, contracts) = await ContractsApi().listContracts();
    if (contractsCode != 200) return (agent, null, null);
    final (shipsCode, fleet) = await FleetApi().listShips();
    if (shipsCode != 200) return (agent, contracts, null);

    return (agent, contracts, fleet);
  }

  Future<(int, Agent)> getMyAgentStats() async {
    return await AgentApi().getMyAgentStats();
  }

  // Contract methods
  Future<(int, List<Contract>)> listContracts() async {
    return await ContractsApi().listContracts();
  }

  Future<(int, Contract)> acceptContract(String id) async {
    return await ContractsApi().acceptContract(id);
  }

  Future<(int, Contract, ContractDeliverGood)> deliverGoodsToContract(
      String contractId,
      String shipSymbol,
      String tradeSymbol,
      int units) async {
    return await ContractsApi()
        .deliverGoodsToContract(contractId, shipSymbol, tradeSymbol, units);
  }

  Future<int> fulfillContract(String contractId) async {
    return await ContractsApi().fulfillContract(contractId);
  }

  // Fleet methods
  Future<(int, List<Ship>)> listShips() async {
    return await FleetApi().listShips();
  }

  /// Purchase a new ship, will return updated data about [Agent] & [Ship], and a transaction
  Future<(int, Agent, Ship, Transaction)> purchaseShip(
      ShipType shipType, String waypointSymbol) async {
    return await FleetApi().purchaseShip(shipType, waypointSymbol);
  }

  Future<(int, Ship)> getShipDetails(String shipSymbol) async {
    return await FleetApi().getShip(shipSymbol);
  }

  Future<(int, ShipCargo)> getShipCargo(String shipSymbol) async {
    return await FleetApi().getShipCargo(shipSymbol);
  }

  Future<(int, ShipNav)> orbitShip(String shipSymbol) async {
    return await FleetApi().orbitShip(shipSymbol);
  }

  Future<(int, ShipCargo, Cooldown, RefiningGoods, RefiningGoods)> shipRefine(
      String shipSymbol, Produce produceToMake) async {
    return await FleetApi().shipRefine(shipSymbol, produceToMake);
  }

  Future<(int, Chart, Waypoint)> createChart(String shipSymbol) async {
    return await FleetApi().createChart(shipSymbol);
  }

  Future<(int, Cooldown)> getCooldown(String shipSymbol) async {
    return await FleetApi().getCooldown(shipSymbol);
  }

  Future<(int, ShipNav)> dockShip(String shipSymbol) async {
    return await FleetApi().dockShip(shipSymbol);
  }

  Future<(int, Cooldown, List<Survey>)> createSurvey(String shipSymbol) async {
    return await FleetApi().createSurvey(shipSymbol);
  }

  Future<(int, Cooldown, Extraction, ShipCargo)> extractResources(
      String shipSymbol, Survey survey) async {
    return await FleetApi().extractResources(shipSymbol, survey);
  }

  Future<(int, Cooldown, Siphon, ShipCargo)> siphonResources(
      String shipSymbol) async {
    return await FleetApi().siphonResources(shipSymbol);
  }

  Future<(int, Cooldown, Extraction, ShipCargo)> extractResourcesWithSurvery(
      String shipSymbol, Survey survey) async {
    return await FleetApi().extractResourcesWithSurvery(shipSymbol, survey);
  }

  Future<(int, ShipCargo)> jettisonCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    return await FleetApi().jettisonCargo(shipSymbol, goodsSymbol, units);
  }

  Future<(int, ShipNav, Cooldown, Transaction)> jumpShip(
      String shipSymbol, Waypoint waypoint) async {
    return await FleetApi().jumpShip(shipSymbol, waypoint);
  }

  Future<(int, Fuel, ShipNav)> navigateShip(
      String shipSymbol, Waypoint waypoint) async {
    return await FleetApi().navigateShip(shipSymbol, waypoint);
  }

  Future<(int, ShipNav)> patchShipNav(String shipSymbol, ShipNav nav) async {
    return await FleetApi().patchShipNav(shipSymbol, nav);
  }

  Future<(int, ShipNav)> getShipNav(String shipSymbol) async {
    return await FleetApi().getShipNav(shipSymbol);
  }

  Future<(int, Fuel, ShipNav)> warpShip(
      String shipSymbol, Waypoint waypoint) async {
    return await FleetApi().warpShip(shipSymbol, waypoint);
  }

  Future<(int, Agent, ShipCargo, Transaction)> sellCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    return await FleetApi().sellCargo(shipSymbol, goodsSymbol, units);
  }

  Future<(int, Cooldown, List<ScannedSystem>)> scanSytems(
      String shipSymbol) async {
    return await FleetApi().scanSystems(shipSymbol);
  }

  Future<(int, Cooldown, List<ScannedWaypoint>)> scanWaypoints(
      String shipSymbol) async {
    return FleetApi().scanWaypoints(shipSymbol);
  }

  Future<(int, Cooldown, List<ScannedShip>)> scanShips(
      String shipSymbol) async {
    return await FleetApi().scanShips(shipSymbol);
  }

  Future<(int, Agent, Fuel, Transaction)> refuelShip(
      String shipSymbol, int units, bool? shouldRefuelFromCargo) async {
    return await FleetApi()
        .refuelShip(shipSymbol, units, shouldRefuelFromCargo);
  }

  Future<(int, Agent, ShipCargo, Transaction)> purchaseCargo(
      String shipSymbol, String goodsSymbol, int units) async {
    return await FleetApi().purchaseCargo(shipSymbol, goodsSymbol, units);
  }

  Future<(int, ShipCargo)> transferCargo(String shipSymbol, String tradeSymbol,
      int units, String shipSymbolToTransferTo) async {
    return await FleetApi()
        .transferCargo(shipSymbol, tradeSymbol, units, shipSymbolToTransferTo);
  }

  Future<(int, Contract)> negotiateContract(String shipSymbol) async {
    return await FleetApi().negotiateContract(shipSymbol);
  }

  Future<(int, List<Mount>)> getMounts(String shipSymbol) async {
    return await FleetApi().getMounts(shipSymbol);
  }

  Future<(int, Agent, List<Mount>, ShipCargo, Transaction)> installMount(
      String shipSymbol, Mount mountToInstall) async {
    return await FleetApi().installMount(shipSymbol, mountToInstall);
  }

  Future<(int, Agent, List<Mount>, ShipCargo, Transaction)> removeMount(
      String shipSymbol, Mount mountToInstall) async {
    return await FleetApi().removeMount(shipSymbol, mountToInstall);
  }

  Future<(int, List<Faction>)> listFactions() async {
    return await FactionsApi().listFactions();
  }

  Future<(int, Faction)> getFaction(String factionSymbol) async {
    return await FactionsApi().getFaction(factionSymbol);
  }

  Future<(int, List<System>)> listSystems(
      int? limitPerPage, int? pageToRequest) async {
    return await SystemsApi().listSystems(limitPerPage, pageToRequest);
  }

  Future<(int, System)> getSystem(String systemSymbol) async {
    return await SystemsApi().getSystem(systemSymbol);
  }

  Future<(int, List<Waypoint>)> listWaypointsInSystem(
      String systemSymbol,
      int? limitPerPage,
      int? pageToRequest,
      WaypointTraitSymbol? trait,
      WaypointType? type) async {
    return await SystemsApi().listWaypointsInSystem(
        systemSymbol, limitPerPage, pageToRequest, trait, type);
  }

  Future<(int, Waypoint)> getWaypoint(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getWaypoint(systemSymbol, waypointSymbol);
  }

  Future<(int, Market)> getMarket(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getMarket(systemSymbol, waypointSymbol);
  }

  Future<(int, Shipyard)> getShipyard(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getShipyard(systemSymbol, waypointSymbol);
  }

  Future<(int, JumpGate)> getJumpGate(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getJumpGate(systemSymbol, waypointSymbol);
  }

  Future<(int, Construction)> getConstructionSite(
      String systemSymbol, String waypointSymbol) async {
    return await SystemsApi().getConstructionSite(systemSymbol, waypointSymbol);
  }

  Future<(int, Construction, ShipCargo)> supplyConstructionSite(
      String systemSymbol,
      String waypointSymbol,
      String shipSymbol,
      String tradeSymbol,
      int units) async {
    return await SystemsApi().supplyConstructionSite(
        systemSymbol, waypointSymbol, shipSymbol, tradeSymbol, units);
  }
}
