import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fp_logger/fp_logger.dart';
import 'package:meta/meta.dart';

/// {@template client_options}
/// The options for the client
/// {@endtemplate}
@immutable
class ClientOptions extends Equatable {
  ///{@macro client_options}
  const ClientOptions({
    required this.baseUrl,
    this.typePolicies = const {},
    this.updateCacheHandlers = const {},
    this.defaultFetchPolicies = const {},
    this.cache,
    this.responseParser = const ResponseParser(),
    this.requestSerializer = const RequestSerializer(),
    this.useGETForQueries = false,
    this.serializableErrors = false,
    this.defaultHeaders = const {},
    this.loggerOptions = const DioLoggerOptions(),
  });

  /// The base url for the client
  final String baseUrl;

  /// The type policies for the client
  final Map<String, TypePolicy> typePolicies;

  /// The update cache handlers for the client
  final Map<String, Function> updateCacheHandlers;

  /// The default fetch policies for the client
  final Map<OperationType, FetchPolicy> defaultFetchPolicies;

  /// The cache for the client
  final Cache? cache;

  /// The response parser for the client
  final ResponseParser responseParser;

  /// The request serializer for the client
  final RequestSerializer requestSerializer;

  /// Whether to use GET for queries
  final bool useGETForQueries;

  /// Whether to use serializable errors
  final bool serializableErrors;

  /// The default headers for the client
  final Map<String, String> defaultHeaders;

  /// The logger options for the client
  final DioLoggerOptions loggerOptions;

  @override
  List<Object?> get props => [
        baseUrl,
        typePolicies,
        updateCacheHandlers,
        defaultFetchPolicies,
        cache,
        responseParser,
        requestSerializer,
        useGETForQueries,
        serializableErrors,
        defaultHeaders,
        loggerOptions,
      ];
}
