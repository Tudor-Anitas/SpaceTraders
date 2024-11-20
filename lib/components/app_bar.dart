import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/pages/ships/ship_details/deprecated/find_asteroids_tab.dart';

AppBar customAppBar(BuildContext context, String title,
    {List<Widget>? actions}) {
  return AppBar(
    title: Text(title),
    elevation: 2,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => context.pop(),
    ),
    actions: actions,
  );
}

void handleShipActions(
    BuildContext context, int value, String? ship, String? system) {
  if (ship == null || system == null) return;
  switch (value) {
    case 0:
      showBottomSheet(
        context: context,
        builder: (context) => FindAsteroidsTab(
          shipSymbol: ship,
          systemSymbol: system,
        ),
      );
  }
}
