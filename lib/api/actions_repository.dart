import 'package:space_traders/api/agent_api.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/api/fleet_api.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/ship.dart';

class ActionsRepository {
  Future<void> register() async {
    await AgentApi().register();
  }

  Future<Agent> getMyAgentStats() async {
    return await AgentApi().getMyAgentStats();
  }

  Future<List<Contract>> viewContracts() async {
    return await ContractsApi().viewContracts();
  }

  Future<Contract> acceptContract(String id) async {
    return await ContractsApi().acceptContract(id);
  }

  Future<List<Ship>> listShips() async {
    return await FleetApi().listShips();
  }
}
