part of 'home_cubit.dart';

class HomeState extends Equatable {
  final Agent agent;
  final StateMessage message;
  const HomeState({required this.agent, required this.message});

  @override
  List<Object> get props => [agent, message];

  HomeState copyWith({Agent? agent, StateMessage? message}) {
    return HomeState(
        agent: agent ?? this.agent, message: message ?? this.message);
  }
}
