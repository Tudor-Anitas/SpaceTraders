import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/actions_repository.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/main.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/faction.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/shipyard.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          HomeState(
              agent: Agent.empty(),
              message: StateError(key: UniqueKey(), text: ''),
              contracts: const [],
              ships: const [],
              selectedContractIndex: 0),
        );

  Future<void> getLoginData() async {
    final (agent, contracts, fleet) = await ActionsRepository().getLoginData();
    emit(state.copyWith(
        agent: agent ?? Agent.empty(),
        contracts: contracts ?? [],
        ships: fleet ?? []));
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

  selectContract({int? contractIndex}) {
    emit(state.copyWith(selectedContractIndex: contractIndex ?? 0));
  }

  Future<List<String>> findLocalShipyard(String systemSymbol) async {
    var (responseCode, waypointSymbols) =
        await ActionsRepository().findLocalShipyards(systemSymbol);

    if (responseCode >= 400) {
      _showSnackbarError('Could not find shipyards, some error occurred');
      return [];
    } else {
      return waypointSymbols;
    }
  }

  Future getShipyard(String systemSymbol, String waypointSymbol) async {
    var (responseCode, shipyard) =
        await ActionsRepository().getShipyard(systemSymbol, waypointSymbol);

    if (responseCode >= 400) {
      _showSnackbarError('Cannot get ships from this shipyard :(');
      return Shipyard.fromMap(const {});
    } else {
      return shipyard;
    }
  }

  _showSnackbarError(String errorTxt) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(errorTxt),
      ),
    );
  }
}
