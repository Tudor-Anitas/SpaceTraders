part of 'home_cubit.dart';

class HomeState extends Equatable {
  final Agent agent;
  final StateMessage message;
  final List<Contract> contracts;
  final List<Ship> ships;
  final bool isDetailsPage;
  final int selectedContractIndex;
  const HomeState(
      {required this.agent,
      required this.message,
      required this.contracts,
      required this.ships,
      required this.isDetailsPage,
      required this.selectedContractIndex});

  @override
  List<Object> get props =>
      [agent, message, contracts, ships, isDetailsPage, selectedContractIndex];

  HomeState copyWith(
      {Agent? agent,
      StateMessage? message,
      List<Contract>? contracts,
      List<Ship>? ships,
      bool? isDetailsPage,
      int? selectedContractIndex}) {
    return HomeState(
        agent: agent ?? this.agent,
        message: message ?? this.message,
        contracts: contracts ?? this.contracts,
        ships: ships ?? this.ships,
        isDetailsPage: isDetailsPage ?? this.isDetailsPage,
        selectedContractIndex:
            selectedContractIndex ?? this.selectedContractIndex);
  }
}
