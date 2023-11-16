import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/cubit/home_cubit.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/pages/home_page.dart/my_character.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if(state.message.text == States.myCharacter.name){
          
        }
      },
      child: Scaffold(
        body: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [MyCharacter()],
            ),
          ),
        ),
      ),
    );
  }
}
