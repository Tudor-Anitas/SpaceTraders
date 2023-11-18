import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/contract_deliver_good.dart';
import 'package:space_traders/models/contract.dart';

class ContractsApi {
  Future<List<Contract>> listContracts() async {
    try {
      Response response = await dio.get('/my/contracts');

      List<Contract> contracts = List.generate(
        response.data['data'].length,
        (index) => Contract.fromMap(
          response.data['data'][index],
        ),
      );

      return contracts;
    } catch (e) {
      debugPrint(e.toString());
      return List<Contract>.empty();
    }
  }

  Future<Contract> acceptContract(String id) async {
    Response response = await dio.post('/my/contracts/$id/accept');
    return Contract.fromMap(response.data['contract']);
  }

  /// returns a updated [Contract] and updated [ContractDeliverGood] of the ship that delivered
  Future<(Contract, ContractDeliverGood)> deliverGoodsToContract(String contractId,
      String shipSymbol, String tradeSymbol, int units) async {
    Response response = await dio.post(
      '/my/contracts/$contractId/deliver',
      data: json.encode(
        {'shipSymbol': shipSymbol, 'tradeSymbol': tradeSymbol, 'units': units},
      ),
    );

    return (
      Contract.fromMap(response.data['data']['contract']),
      ContractDeliverGood.fromMap(response.data['data']['cargo'])
    );
  }

  Future<void> fulfillContract(String contractId) async {
    await dio.post('/my/contracts/$contractId/fulfill');
  }
}
