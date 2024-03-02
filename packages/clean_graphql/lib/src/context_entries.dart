import 'package:dio/dio.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:meta/meta.dart';

@immutable
class ExtraContextEntry extends ContextEntry {
  final Map<String, dynamic> extra;

  const ExtraContextEntry([this.extra = const {}]);
  @override
  List<Object?> get fieldsForEquality => [extra];
}

@immutable
class CancelTokenContextEntry extends ContextEntry {
  final CancelToken? cancelToken;

  const CancelTokenContextEntry(this.cancelToken);
  @override
  List<Object?> get fieldsForEquality => [cancelToken];
}

@immutable
class NoAuthContextEntry extends ContextEntry {
  const NoAuthContextEntry([this.key = 'Authorization']);
  final String key;
  @override
  List<Object?> get fieldsForEquality => [key];
}
