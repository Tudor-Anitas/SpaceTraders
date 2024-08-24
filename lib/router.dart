import 'package:go_router/go_router.dart';
import 'package:space_traders/pages/contracts/contracts.dart';
import 'package:space_traders/pages/contracts/details_page.dart';
import 'package:space_traders/pages/home_page/my_character.dart';
import 'package:space_traders/pages/home_page/register.dart';
import 'package:space_traders/pages/root_page/root_page.dart';
import 'package:space_traders/pages/ships/ship_details/ship_details.dart';
import 'package:space_traders/pages/ships/ships.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const RootPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const Register(),
    ),
    GoRoute(
      path: '/myCharacter',
      builder: (context, state) => const MyCharacter(),
    ),
    GoRoute(
      path: '/contracts',
      builder: (context, state) => const MyContracts(),
    ),
    GoRoute(
      path: '/contractDetails',
      builder: (context, state) => const ContractDetails(),
    ),
    GoRoute(
      path: '/myShips',
      builder: (context, state) => const MyShips(),
    ),
    GoRoute(
      path: '/shipDetails',
      builder: (context, state) => ShipDetails(
        shipSymbol: state.extra! as String,
      ),
    ),
  ],
);
