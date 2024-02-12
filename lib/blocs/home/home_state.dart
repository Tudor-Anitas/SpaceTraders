part of 'home_cubit.dart';

class HomeState extends Equatable {
  final Agent agent;
  final StateError message;
  final List<Contract> contracts;
  final List<Ship> ships;

  final int selectedContractIndex;
  const HomeState(
      {required this.agent,
      required this.message,
      required this.contracts,
      required this.ships,
      required this.selectedContractIndex});

  @override
  List<Object> get props =>
      [agent, message, contracts, ships, selectedContractIndex];

  HomeState copyWith(
      {Agent? agent,
      StateError? message,
      List<Contract>? contracts,
      List<Ship>? ships,
      bool? isDetailsPage,
      int? selectedContractIndex}) {
    return HomeState(
        agent: agent ?? this.agent,
        message: message ?? this.message,
        contracts: contracts ?? this.contracts,
        ships: ships ?? this.ships,
        selectedContractIndex:
            selectedContractIndex ?? this.selectedContractIndex);
  }
}
