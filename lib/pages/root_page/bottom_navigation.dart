import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BottomNav extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNav({super.key, required this.navigationShell});

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
      selectedIndex: widget.navigationShell.currentIndex,
      onDestinationSelected: (value) {
        widget.navigationShell.goBranch(value,
            initialLocation: value == widget.navigationShell.currentIndex);
      },
    );
  }
}
