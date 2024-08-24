import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/root/root_cubit.dart';
import 'package:space_traders/pages/contracts/contracts_page.dart';
import 'package:space_traders/pages/home_page/home.dart';
import 'package:space_traders/pages/root_page/bottom_navigation.dart';
import 'package:space_traders/pages/settings/settings.dart';
import 'package:space_traders/pages/ships/ships.dart';
import 'package:space_traders/pages/ships/shipyard.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      body: IndexedStack(
        index: context.watch<RootCubit>().state.pageIndex,
        children: const [
          HomePage(),
          MyShips(),
          ContractsPage(),
          SettingsPage()
        ],
      ),
    );
  }
}
