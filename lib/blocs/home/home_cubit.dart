import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/actions_repository.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/faction.dart';
import 'package:space_traders/models/ship.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          HomeState(
              agent: Agent.empty(),
              message: StateError(key: UniqueKey(), text: ''),
              contracts: const [],
              ships: const [],
              isDetailsPage: false,
              selectedContractIndex: 0),
        );

  Future<void> getMyAgentStats() async {
    final (statusCode, agent) = await ActionsRepository().getMyAgentStats();
    emit(
      state.copyWith(
          agent: statusCode == 200 ? agent : state.agent,
          message: statusCode == 200
              ? state.message
              : StateError(text: '', key: UniqueKey())),
    );
  }

  Future<bool> register(String name, FactionSymbol factionSymbol) async {
    final (statusCode, agent, contract, _, ship) =
        await ActionsRepository().register(name, factionSymbol);

    if (statusCode == 201) {
      emit(
        state.copyWith(
          agent: agent,
          contracts: [contract],
          ships: [ship],
        ),
      );
      return true;
    }
    return false;
  }

  Future<void> listShips() async {
    var (code, ships) = await ActionsRepository().listShips();
    if (code == 200) {
      emit(
        state.copyWith(
          ships: ships,
        ),
      );
    }
  }

  Future<void> viewContracts() async {
    int result = 0;
    List<Contract> contracts = [];

    if (state.contracts.isEmpty) {
      (result, contracts) = await ContractsApi().listContracts();
    } else {
      contracts = state.contracts;
    }

    if (result == 0 || (result != 0 && result == 200)) {
      emit(
        state.copyWith(
          contracts: contracts,
        ),
      );
    }
  }

  Future<void> acceptContract(String id) async {
    final (statusCode, updatedContract) =
        await ActionsRepository().acceptContract(id);

    if (statusCode == 200) {
      List<Contract> contracts = List.from(state.contracts);
      int indexOfOldContract = contracts.indexOf(contracts
          .firstWhere((contract) => contract.id == updatedContract.id));
      contracts[indexOfOldContract] = updatedContract;

      emit(state.copyWith(contracts: contracts));
    }
  }

  changePage({int? contractIndex}) {
    emit(state.copyWith(
        isDetailsPage: !state.isDetailsPage,
        selectedContractIndex: contractIndex ?? 0));
  }
}
