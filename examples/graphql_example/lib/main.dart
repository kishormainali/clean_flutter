import 'package:flutter/material.dart';
import 'package:graphql_example/src/app/presentation/pages/app.dart';
import 'package:graphql_example/src/core/di/injector.dart';

Future<void> main() async {
  await setupInjection();
  runApp(const App());
}
