import 'package:space_traders/api/agent_api.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/api/fleet_api.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/cargo.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/ship.dart';

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

  Future<(Contract, Cargo)> deliverGoodsToContract(String contractId,
      String shipSymbol, String tradeSymbol, int units) async {
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
}
