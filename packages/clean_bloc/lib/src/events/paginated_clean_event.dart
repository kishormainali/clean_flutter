import 'package:equatable/equatable.dart';

/// {@template paginated_clean_event}
/// Base event for paginated_clean_bloc
/// {@endtemplate}
abstract class PaginatedCleanEvent extends Equatable {
  /// {@macro paginated_clean_event}
  const PaginatedCleanEvent();

  @override
  List<Object?> get props => [];
}

/// {@template paginated_clean_event_init}
/// Initial event
/// {@endtemplate}
final class PaginatedCleanEventInit extends PaginatedCleanEvent {
  /// {@macro paginated_clean_event_init}
  const PaginatedCleanEventInit({this.showLoading = true});

  /// whether to show the loading state
  final bool showLoading;

  @override
  List<Object?> get props => [showLoading];
}

/// {@template paginated_clean_event_load_more}
/// Load more event
/// {@endtemplate}
final class PaginatedCleanEventLoadMore extends PaginatedCleanEvent {
  /// {@macro paginated_clean_event_load_more}
  const PaginatedCleanEventLoadMore();
}
