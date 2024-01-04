import 'dart:io';

import 'package:dio/io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../graphql/request_serializer.dart';
import '../graphql/response_parser.dart';

part 'clean_base_options.freezed.dart';

const _defaultHeaders = {
  'Accept': 'application/json',
  'Content-Type': 'application/json',
};
const _defaultTimeOut = Duration(seconds: 30);

/// {@template base_options}
/// Base options for graphql request
/// {@endtemplate}
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class CleanBaseOptions with _$CleanBaseOptions {
  const CleanBaseOptions._();

  /// {@macro base_options}
  const factory CleanBaseOptions({
    /// base url
    required String baseUrl,

    /// headers Defaults to [_defaultHeaders]
    @Default(_defaultHeaders) Map<String, dynamic> headers,

    /// connect timeout Defaults to [_defaultTimeOut]
    @Default(_defaultTimeOut) Duration connectTimeOut,

    /// receive timeout Defaults to [_defaultTimeOut]
    @Default(_defaultTimeOut) Duration readTimeOut,

    /// send timeout Defaults to [_defaultTimeOut]
    @Default(_defaultTimeOut) Duration sendTimeOut,

    /// idle timeout Defaults to [_defaultTimeOut]
    @Default(_defaultTimeOut) Duration idleTimeout,

    /// extra options for dio used for graphql request
    ///
    /// end point Defaults to '/graphql'
    @Default('/graphql') String endpoint,

    /// request serializer Defaults to [RequestSerializer()]
    @Default(RequestSerializer()) RequestSerializer requestSerializer,

    /// response parser Defaults to [ResponseParser()]
    @Default(ResponseParser()) ResponseParser responseParser,

    /// use get for queries Defaults to false
    @Default(false) bool useGetForQueries,

    /// serializable errors Defaults to false
    @Default(false) bool serializableErrors,

    /// proxy callback
    String Function(Uri? uri)? proxyCallback,

    /// validate certificates
    ValidateCertificate? validateCertificate,

    /// bad certificate callback
    BadCertificateCallback? onBadCertificate,

    /// security context
    SecurityContext? securityContext,
  }) = _CleanBaseOptions;
}
