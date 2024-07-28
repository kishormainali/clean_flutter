import 'package:dio/dio.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:meta/meta.dart';

/// A context entry that can be added to a GraphQLClient to provide additional
/// headers to be sent with each request.
@immutable
class ExtraContextEntry extends ContextEntry {
  const ExtraContextEntry([this.extra = const {}]);
  final Map<String, dynamic> extra;
  @override
  List<Object?> get fieldsForEquality => [extra];
}

/// A context entry that can be added to a GraphQLClient to provide cancellation
/// tokens to be used for each request.
@immutable
class CancelTokenContextEntry extends ContextEntry {
  const CancelTokenContextEntry(this.cancelToken);
  final CancelToken? cancelToken;
  @override
  List<Object?> get fieldsForEquality => [cancelToken];
}

/// A context entry that can be added to a GraphQLClient to remove the
/// Authorization header from each request.
@immutable
class NoAuthContextEntry extends ContextEntry {
  const NoAuthContextEntry([this.key = 'Authorization']);
  final String key;
  @override
  List<Object?> get fieldsForEquality => [key];
}
