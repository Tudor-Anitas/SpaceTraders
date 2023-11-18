import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/actions_repository.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/contract.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          HomeState(
              agent: Agent.empty(),
              message: StateMessage(key: UniqueKey(), text: ''),
              contracts: const [],
              isDetailsPage: false,
              selectedContractIndex: 0),
        );

  Future<void> getMyAgentStats() async {
    Agent agent = await ActionsRepository().getMyAgentStats();
    emit(
      state.copyWith(
          agent: agent,
          message:
              StateMessage(text: States.myCharacter.name, key: UniqueKey())),
    );
  }

  Future<void> viewContracts() async {
    emit(
      state.copyWith(
        contracts: state.contracts.isEmpty
            ? await ContractsApi().viewContracts()
            : state.contracts,
      ),
    );
  }

  Future<void> acceptContract(String id) async {
    Contract updatedContract = await ActionsRepository().acceptContract(id);
    List<Contract> contracts = List.from(state.contracts);
    int indexOfOldContract = contracts.indexOf(
        contracts.firstWhere((contract) => contract.id == updatedContract.id));
    contracts[indexOfOldContract] = updatedContract;

    emit(state.copyWith(contracts: contracts));
  }

  mockAcceptContract(String id) {
    List<Contract> contracts = List.from(state.contracts);

    int indexOfOldContract =
        contracts.indexOf(contracts.firstWhere((element) => element.id == id));

    Contract updatedContract =
        contracts[indexOfOldContract].copyWith(accepted: true);

    contracts[indexOfOldContract] = updatedContract;

    emit(state.copyWith(contracts: contracts));
  }

  changePage({int? contractIndex}) {
    emit(state.copyWith(
        isDetailsPage: !state.isDetailsPage,
        selectedContractIndex: contractIndex ?? 0));
  }
}
