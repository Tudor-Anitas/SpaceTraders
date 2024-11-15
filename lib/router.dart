import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/pages/contracts/contracts.dart';
import 'package:space_traders/pages/contracts/details_page.dart';
import 'package:space_traders/pages/home_page/my_character.dart';
import 'package:space_traders/pages/root_page/root_page.dart';
import 'package:space_traders/pages/settings/settings.dart';
import 'package:space_traders/pages/ships/ship_details/ship_details.dart';
import 'package:space_traders/pages/ships/ships.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shipsNavigatorKey = GlobalKey<NavigatorState>();
final _contractsnavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/myCharacter',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          RootPage(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(path: '/myCharacter', builder: (context, state) => const MyCharacter(),)
        ]),
        StatefulShellBranch(
          navigatorKey: _shipsNavigatorKey,
          routes: [
            GoRoute(
              path: '/myShips',
              builder: (context, state) => const MyShips(),
              routes: [
                GoRoute(
                  path: 'shipDetails',
                  builder: (context, state) =>
                      ShipDetails(shipSymbol: state.extra! as String),
                )
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _contractsnavigatorKey,
          routes: [
            GoRoute(
              path: '/contracts',
              builder: (context, state) => const MyContracts(),
              routes: [
                GoRoute(
                  path: 'contractDetails',
                  builder: (context, state) => const ContractDetails(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(routes: [
          GoRoute(path: '/settings', builder: (context, state) => const SettingsPage(),),
        ],)
      ],
    ),
  ],
);
