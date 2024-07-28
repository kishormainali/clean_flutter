import 'package:dio/dio.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:meta/meta.dart';

@immutable
class ExtraContextEntry extends ContextEntry {

  const ExtraContextEntry([this.extra = const {}]);
  final Map<String, dynamic> extra;
  @override
  List<Object?> get fieldsForEquality => [extra];
}

@immutable
class CancelTokenContextEntry extends ContextEntry {

  const CancelTokenContextEntry(this.cancelToken);
  final CancelToken? cancelToken;
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
