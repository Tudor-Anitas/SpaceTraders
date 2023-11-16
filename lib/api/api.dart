import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/agent.dart';

class ApiService {
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

      debugPrint('Agent details: ${agent.toString()}');
      return agent;
    } catch (e) {
      return Agent.empty();
    }
  }
}
