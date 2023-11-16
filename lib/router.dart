import 'package:go_router/go_router.dart';
import 'package:space_traders/pages/home_page.dart/home.dart';

final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const HomePage())],
);
