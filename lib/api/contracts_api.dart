import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/contract_deliver_good.dart';
import 'package:space_traders/models/contract.dart';

class ContractsApi {
  Future<(int, List<Contract>)> listContracts() async {
    try {
      Response response = await dio.get('/my/contracts');

      List<Contract> contracts = List.generate(
        response.data['data'].length,
        (index) => Contract.fromJson(
          response.data['data'][index],
        ),
      );

      return (response.statusCode ?? 200, contracts);
    } on DioException catch (e) {
      debugPrint(e.toString());
      return (e.response?.statusCode ?? 400, List<Contract>.empty());
    }
  }

  Future<(int, Contract)> acceptContract(String id) async {
    Response response = await dio.post('/my/contracts/$id/accept');
    return (
      response.statusCode!,
      Contract.fromJson(response.data['data']['contract'])
    );
  }

  /// returns a updated [Contract] and updated [ContractDeliverGood] of the ship that delivered
  Future<(int, Contract, ContractDeliverGood)> deliverGoodsToContract(
      String contractId,
      String shipSymbol,
      String tradeSymbol,
      int units) async {
    Response response = await dio.post(
      '/my/contracts/$contractId/deliver',
      data: json.encode(
        {'shipSymbol': shipSymbol, 'tradeSymbol': tradeSymbol, 'units': units},
      ),
    );

    return (
      response.statusCode!,
      Contract.fromJson(response.data['data']['contract']),
      ContractDeliverGood.fromJson(response.data['data']['cargo'])
    );
  }

  Future<int> fulfillContract(String contractId) async {
    Response response = await dio.post('/my/contracts/$contractId/fulfill');
    return response.statusCode!;
  }
}
