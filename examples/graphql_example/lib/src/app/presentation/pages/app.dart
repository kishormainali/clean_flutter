import 'package:flutter/material.dart';
import 'package:graphql_example/src/core/di/injector.dart';
import 'package:graphql_example/src/core/routes/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  AppRouter get _appRouter => getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.purple,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          primary: Colors.purple,
        ),
      ),
    );
  }
}
