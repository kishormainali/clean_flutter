import 'package:flutter/material.dart';
import 'package:rest_api_example/src/core/di/injector.dart';
import 'package:rest_api_example/src/core/routes/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  AppRouter get _appRouter => getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: Colors.green,
        ),
      ),
    );
  }
}
