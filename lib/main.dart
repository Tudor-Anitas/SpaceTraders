import 'package:flutter/material.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/pages/home_page.dart/home.dart';
import 'package:space_traders/theme.dart';


void main() async {
  dio.interceptors.add(networkInterceptor);

  // ApiService().showMyAgent();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: const HomePage()
    );
  }
}
