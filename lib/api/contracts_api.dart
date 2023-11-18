import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/contract.dart';

class ContractsApi {
  Future<List<Contract>> viewContracts() async {
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
}
