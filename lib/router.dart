import 'package:go_router/go_router.dart';
import 'package:space_traders/pages/home_page/home.dart';
import 'package:space_traders/pages/home_page/register.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const Register(),
    ),
  ],
);
