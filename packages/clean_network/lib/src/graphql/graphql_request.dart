import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

part 'graphql_request.freezed.dart';

const _defaultTimeOut = Duration(seconds: 30);

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
sealed class GraphRequest with _$GraphRequest {
  const GraphRequest._();

  /// graphql request
  const factory GraphRequest({
    required DocumentNode operation,
    String? operationName,
    @Default({}) Map<String, dynamic> variables,
    @Default({}) Map<String, dynamic> headers,
    @Default({}) Map<String, dynamic> extra,
    CancelToken? cancelToken,
    @Default(_defaultTimeOut) Duration sendTimeOut,
    @Default(_defaultTimeOut) Duration receiveTimeOut,
    @Default(false) bool useGetForQueries,
  }) = _GraphRequest;

  /// create a graphql request from string
  factory GraphRequest.fromString(
    String source, {
    String? operationName,
    Map<String, dynamic> variables = const {},
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> extra = const {},
    CancelToken? cancelToken,
    Duration sendTimeOut = _defaultTimeOut,
    Duration receiveTimeOut = _defaultTimeOut,
    bool useGetForQueries = false,
  }) =>
      GraphRequest(
        operation: parseString(source),
        operationName: operationName,
        variables: variables,
        headers: headers,
        extra: extra,
        cancelToken: cancelToken,
        sendTimeOut: sendTimeOut,
        receiveTimeOut: receiveTimeOut,
        useGetForQueries: useGetForQueries,
      );
}
