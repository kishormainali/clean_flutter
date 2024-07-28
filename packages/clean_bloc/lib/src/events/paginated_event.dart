import 'package:equatable/equatable.dart';

/// {@template paginated_clean_event}
/// Base event for paginated_clean_bloc
/// {@endtemplate}
abstract class PaginatedEvent extends Equatable {
  /// {@macro paginated_clean_event}
  const PaginatedEvent();

  @override
  List<Object?> get props => [];
}

/// {@template paginated_clean_event_init}
/// Initial event
/// {@endtemplate}
final class PaginatedEventInit extends PaginatedEvent {
  /// {@macro paginated_clean_event_init}
  const PaginatedEventInit({this.showLoading = true});

  /// whether to show the loading state
  final bool showLoading;

  @override
  List<Object?> get props => [showLoading];
}

/// {@template paginated_clean_event_load_more}
/// Load more event
/// {@endtemplate}
final class PaginatedEventLoadMore extends PaginatedEvent {
  /// {@macro paginated_clean_event_load_more}
  const PaginatedEventLoadMore();
}
