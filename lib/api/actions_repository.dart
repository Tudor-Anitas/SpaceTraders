import 'package:space_traders/api/agent_api.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/api/fleet_api.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/contract_deliver_good.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/cooldown.dart';
import 'package:space_traders/models/nav.dart';
import 'package:space_traders/models/produce.dart';
import 'package:space_traders/models/refining_goods.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/ship_cargo.dart';
import 'package:space_traders/models/transaction.dart';

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
}
