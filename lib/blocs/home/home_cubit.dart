import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/api/actions_repository.dart';
import 'package:space_traders/api/contracts_api.dart';
import 'package:space_traders/blocs/ships/ships_cubit.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/models/agent.dart';
import 'package:space_traders/models/contract.dart';
import 'package:space_traders/models/faction.dart';
import 'package:space_traders/models/market_trade_goods.dart';
import 'package:space_traders/models/transaction.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          HomeState(
            agent: Agent.empty(),
            message: StateMessage(key: UniqueKey(), text: ''),
            contracts: const [],
            transactions: const [],
            selectedContractIndex: 0,
            marketCart: const {},
          ),
        );

  Future<void> getLoginData(BuildContext context) async {
    final (agent, contracts, fleet) = await ActionsRepository().getLoginData();
    emit(state.copyWith(
      agent: agent ?? Agent.empty(),
      contracts: contracts ?? [],
    ));
    context.read<ShipsCubit>().setShips(fleet ?? []);
  }

  Future<bool> register(
      BuildContext context, String name, FactionSymbol factionSymbol) async {
    final (statusCode, agent, contract, _, ship) =
        await ActionsRepository().register(name, factionSymbol);

    if (statusCode == 201) {
      emit(
        state.copyWith(
          agent: agent,
          contracts: [contract],
        ),
      );
      context.read<ShipsCubit>().setShips([ship]);
      return true;
    }
    return false;
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

  addTransaction(Transaction transaction) {
    emit(state.copyWith(transactions: [...state.transactions, transaction]));
  }

  setAgent(Agent agent) {
    emit(state.copyWith(agent: agent));
  }

  Future showMarketGoods(BuildContext context, String shipSymbol) async {
    var currentShip = context
        .read<ShipsCubit>()
        .state
        .ships
        .firstWhere((ship) => ship.symbol == shipSymbol);

    return ActionsRepository().getMarket(
      currentShip.nav.systemSymbol,
      currentShip.nav.waypointSymbol,
    );
  }

  removeFromCart(MarketTradeGoods marketGood) {
    Map<MarketTradeGoods, int> newMap = Map.from(state.marketCart);
    if (newMap[marketGood] != null) {
      if (newMap[marketGood]! == 1) {
        newMap.remove(marketGood);
      } else if (newMap[marketGood]! > 1) {
        newMap[marketGood] = newMap[marketGood]! - 1;
      }
    }

    emit(state.copyWith(marketCart: newMap));
  }

  addToCart(MarketTradeGoods marketGood) {
    Map<MarketTradeGoods, int> newMap = Map.from(state.marketCart);
    newMap[marketGood] = state.marketCart[marketGood] != null
        ? state.marketCart[marketGood]! + 1
        : 1;
    emit(state.copyWith(marketCart: newMap));
  }

  clearCart() {
    emit(state.copyWith(marketCart: const {}));
  }

  showMessage(StateMessage message) {
    emit(state.copyWith(message: message));
  }
}
