import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/pages/root_page/bottom_navigation.dart';

class RootPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const RootPage({super.key, required this.navigationShell});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNav(
          navigationShell: widget.navigationShell,
        ),
        body: widget.navigationShell);
  }
}
