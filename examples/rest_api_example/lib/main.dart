import 'package:flutter/material.dart';
import 'package:rest_api_example/src/app/presentation/pages/app.dart';
import 'package:rest_api_example/src/core/di/injector.dart';

void main() async {
  await setupInjection();
  runApp(const App());
}
