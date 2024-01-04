import 'package:equatable/equatable.dart';

/// {@template clean_event}
/// Base event for clean_bloc
/// {@endtemplate}
abstract class CleanEvent extends Equatable {
  const CleanEvent();
  @override
  List<Object?> get props => [];
}

/// {@template clean_event_init}
/// Initial event
/// {@endtemplate}
final class CleanEventInit extends CleanEvent {
  /// {@macro clean_event_init}
  const CleanEventInit({this.showLoading = true});

  /// whether to show the loading state
  final bool showLoading;

  @override
  List<Object?> get props => [showLoading];
}
