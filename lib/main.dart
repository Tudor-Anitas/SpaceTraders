import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';

import 'package:space_traders/router.dart';
import 'package:space_traders/theme.dart';

void main() async {
  dio.interceptors.add(networkInterceptor);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomeCubit())],
      child: MaterialApp.router(
        theme: themeData(),
        routerConfig: router,
      ),
    );
  }
}
