part of 'home_cubit.dart';

class HomeState extends Equatable {
  final Agent agent;
  final StateMessage message;
  final List<Contract> contracts;
  final List<Transaction> transactions;
  final Map<MarketTradeGoods, int> marketCart;

  final int selectedContractIndex;
  const HomeState({
    required this.agent,
    required this.message,
    required this.contracts,
    required this.selectedContractIndex,
    required this.transactions,
    required this.marketCart,
  });

  @override
  List<Object> get props => [
        agent,
        message,
        contracts,
        selectedContractIndex,
        transactions,
        marketCart
      ];

  HomeState copyWith(
      {Agent? agent,
      StateMessage? message,
      List<Contract>? contracts,
      bool? isDetailsPage,
      int? selectedContractIndex,
      List<Transaction>? transactions,
      Map<MarketTradeGoods, int>? marketCart}) {
    return HomeState(
      agent: agent ?? this.agent,
      message: message ?? this.message,
      contracts: contracts ?? this.contracts,
      selectedContractIndex:
          selectedContractIndex ?? this.selectedContractIndex,
      transactions: transactions ?? this.transactions,
      marketCart: marketCart ?? this.marketCart,
    );
  }
}
