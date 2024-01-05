import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_bloc_example/src/app/app.dart';
import 'package:clean_bloc_example/src/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:fp_util/fp_util.dart';

import 'bloc_observer.dart';

void bootstrap() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /// add observer for bloc
      Bloc.observer = AppBlocObserver();

      /// init dependency injection
      await setUpInjection();

      /// run app
      runApp(const App());
    },
    (error, stack) {
      logger.e('Zoned Error', error: error, stackTrace: stack);
    },
  );
}
