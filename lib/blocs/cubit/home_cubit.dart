import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:space_traders/api/api.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/models/agent.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          HomeState(
            agent: Agent.empty(),
            message: StateMessage(key: UniqueKey(), text: ''),
          ),
        );

  Future<void> getMyAgentStats() async {
    Agent agent = await ApiService().getMyAgentStats();
    emit(
      state.copyWith(
          agent: agent,
          message:
              StateMessage(text: States.myCharacter.name, key: UniqueKey())),
    );
  }
}
