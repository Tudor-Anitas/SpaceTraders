import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/faction.dart';
import 'package:space_traders/models/ship.dart';

class AgentApi {
  Future<(int, Agent, Contract, Faction, List<Ship>, String)> register(
      String name, FactionSymbol faction) async {
    try {
      Response response = await dio.post(
        '/register',
        data: json.encode(
          {'symbol': name, 'faction': faction.name},
        ),
      );
      Map data = response.data['data'];
      return (
        response.statusCode ?? 200,
        Agent.fromMap(data['agent']),
        Contract.fromMap(data['contract']),
        Faction.fromMap(data['faction']),
        List<Ship>.from(data['ships']?.map((ship) => Ship.fromMap(ship))),
        data['token'] as String
      );
    } on DioException catch (e) {
      return (
        e.response?.statusCode ?? 400,
        Agent.empty(),
        Contract.fromMap(const {}),
        Faction.fromMap(const {}),
        List<Ship>.from([].map((ship) => Ship.fromMap(const {}))),
        ''
      );
    }
  }

  Future<(int, Agent)> getMyAgentStats() async {
    try {
      Response response = await dio.get('/my/agent');
      Agent agent = Agent.fromMap(response.data['data']);
      return (response.statusCode ?? 200, agent);
    } on DioException catch (e) {
      return (e.response?.statusCode ?? 400, Agent.empty());
    }
  }
}
