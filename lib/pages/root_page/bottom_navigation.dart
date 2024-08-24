import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/blocs/root/root_cubit.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  double iconSize = 30;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        destinations: [
          NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIcons.houseSimple(),
                size: iconSize,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIcons.rocketLaunch(),
                size: iconSize,
              ),
              label: 'Ships'),
          NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIcons.scroll(),
                size: iconSize,
              ),
              label: 'Contracts'),
          NavigationDestination(
              icon: PhosphorIcon(
                PhosphorIcons.gearSix(),
                size: iconSize,
              ),
              label: 'Settings'),
        ],
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: context.watch<RootCubit>().state.pageIndex,
        onDestinationSelected: (value) =>
            context.read<RootCubit>().changeTab(value));
  }
}
