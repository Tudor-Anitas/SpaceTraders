import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/agent.dart';

class AgentApi {
  Future<void> register() async {
    await dio.post(
      '/register',
      data: json.encode(
        {'symbol': 'Shinigami', 'faction': 'COSMIC'},
      ),
    );
  }

  Future<Agent> getMyAgentStats() async {
    try {
      Response response = await dio.get('/my/agent');
      Agent agent = Agent.fromMap(response.data['data']);
      return agent;
    } catch (e) {
      return Agent.empty();
    }
  }
}
