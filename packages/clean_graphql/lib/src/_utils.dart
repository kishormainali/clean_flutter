import 'dart:convert';

import 'package:_clean_flutter_internal/_clean_flutter_internal.dart' as clean_core;
import 'package:dio/dio.dart' as dio;
import 'package:ferry/ferry.dart';
import 'package:gql/ast.dart';
import 'package:gql_exec/gql_exec.dart' as gql;

/// Recursively extract [dio.MultipartFile]s and return them as a normalized map of path => file
/// From the given request body
///
/// ```dart
/// {
///   "foo": [ { "bar": MultipartFile("blah.txt") } ]
///  }
/// // =>
/// {
///   "foo.0.bar": MultipartFile("blah.txt")
/// }
/// ```
Map<String, dio.MultipartFile> extractFlattenedFileMap(
  dynamic body, {
  Map<String, dio.MultipartFile>? currentMap,
  List<String> currentPath = const <String>[],
}) {
  currentMap ??= <String, dio.MultipartFile>{};
  if (body is Map<String, dynamic>) {
    final entries = body.entries;
    for (final element in entries) {
      currentMap.addAll(
        extractFlattenedFileMap(
          element.value,
          currentMap: currentMap,
          currentPath: List<String>.from(currentPath)..add(element.key),
        ),
      );
    }
    return currentMap;
  }
  if (body is List<dynamic>) {
    for (var i = 0; i < body.length; i++) {
      currentMap.addAll(
        extractFlattenedFileMap(
          body[i],
          currentMap: currentMap,
          currentPath: List<String>.from(currentPath)..add(i.toString()),
        ),
      );
    }
    return currentMap;
  }

  if (body is dio.MultipartFile) {
    return currentMap
      ..addAll({
        currentPath.join('.'): body,
      });
  }

  return currentMap;
}

Map<String, dynamic> generateFileFormBody(Map<String, dio.MultipartFile> fileMap) {
  final fileMapping = <String, List<String>>{};
  final fileList = <dio.MultipartFile>[];

  final fileMapEntries = fileMap.entries.toList(growable: false);

  final fileFormBody = <String, dynamic>{};

  for (var i = 0; i < fileMapEntries.length; i++) {
    final entry = fileMapEntries[i];
    final indexString = i.toString();
    fileMapping.addAll(<String, List<String>>{
      indexString: <String>[entry.key],
    });
    final f = entry.value;
    fileList.add(f);
  }

  fileFormBody['map'] = json.encode(fileMapping);
  for (var i = 0; i < fileList.length; i++) {
    fileFormBody[i.toString()] = fileList[i];
  }

  return fileFormBody;
}

extension WithType on gql.Request {
  OperationType get type {
    final definitions = operation.document.definitions.whereType<OperationDefinitionNode>().toList();
    if (operation.operationName != null) {
      definitions.removeWhere(
        (node) => node.name!.value != operation.operationName,
      );
    }
    // TODOdifferentiate error types, add exception
    assert(definitions.length == 1, 'Operation must have exactly one definition');
    return definitions.first.type;
  }

  bool get isQuery => type == OperationType.query;
}

extension LinkGraphqlExtension on LinkException {
  clean_core.ApiException get toApiException {
    return switch (this) {
      RequestFormatException(:final originalStackTrace) => clean_core.BadRequestException(
          message: clean_core.DioExtensionMessages.badRequestError,
          stackTrace: originalStackTrace,
        ),
      ResponseFormatException(:final originalStackTrace) => clean_core.ParseException(
          message: clean_core.DioExtensionMessages.parseError,
          stackTrace: originalStackTrace,
        ),
      ContextReadException(:final originalStackTrace) => clean_core.ServerException(
          message: 'Error reading from context',
          stackTrace: originalStackTrace,
        ),
      ContextWriteException(:final originalStackTrace) => clean_core.ServerException(
          message: 'Error writing to context',
          stackTrace: originalStackTrace,
        ),
      ServerException(:final statusCode, :final originalStackTrace) => clean_core.ServerException(
          message: clean_core.DioExtensionMessages.unexpectedError,
          stackTrace: originalStackTrace,
          code: statusCode,
        ),
      _ => clean_core.ServerException(
          message: clean_core.DioExtensionMessages.unexpectedError,
          stackTrace: originalStackTrace,
        ),
    };
  }
}
