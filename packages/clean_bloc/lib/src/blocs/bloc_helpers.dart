import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:rxdart/rxdart.dart';

/// EventTransformer for debouncing events
EventTransformer<T> debounceRestartable<T>([Duration duration = _debounceDuration]) {
  return (events, mapper) => restartable<T>().call(events.debounceTime(duration), mapper);
}

/// debounceDuration
const Duration _debounceDuration = Duration(milliseconds: 600);
