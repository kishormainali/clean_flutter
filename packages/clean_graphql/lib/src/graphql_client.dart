import 'dart:async';

import 'package:clean_graphql/src/_dio_link.dart';
import 'package:clean_graphql/src/client_options.dart';
import 'package:dio/dio.dart';
import 'package:ferry/typed_links.dart';

typedef RequestController = StreamController<OperationRequest>;

/// {@template graphql_client}
/// A client for making graphql requests
///
/// This client is built on top of the `ferry` package and the `dio` package.
///
/// It provides a way to make graphql requests with a clean and simple API.
///
/// {@endtemplate}
class GraphQLClient extends TypedLink {
  /// Creates a new [GraphQLClient] instance.
  factory GraphQLClient({
    required ClientOptions options,
    RequestController? requestController,
    Interceptors? interceptors,
    HttpClientAdapter? httpClientAdapter,
  }) =>
      GraphQLClient._(
        options: options,
        link: _createLink(
          options: options,
          requestController: requestController,
          interceptors: interceptors,
          httpClientAdapter: httpClientAdapter,
        ),
      );

  /// plain new instance of the client
  factory GraphQLClient.newInstance(ClientOptions options) => GraphQLClient._(
        options: options,
        link: _createLink(
          options: options,
          requestController: StreamController.broadcast(),
        ),
      );

  /// {@macro graphql_client}
  GraphQLClient._({
    required this.options,
    required TypedLink link,
  }) : _link = link;

  /// Creates a new Link for the client
  static TypedLink _createLink({
    required ClientOptions options,
    RequestController? requestController,
    Interceptors? interceptors,
    HttpClientAdapter? httpClientAdapter,
  }) {
    _defaultCache = options.cache ?? Cache();
    _requestController = requestController ?? StreamController.broadcast();
    _dioLink = DioLink(
      options: options,
      interceptors: interceptors,
      httpClientAdapter: httpClientAdapter,
    );
    return TypedLink.from([
      RequestControllerTypedLink(_requestController),
      const AddTypenameTypedLink(),
      if (options.updateCacheHandlers.isNotEmpty)
        UpdateCacheTypedLink(
          cache: _defaultCache,
          updateCacheHandlers: options.updateCacheHandlers,
        ),
      FetchPolicyTypedLink(
        link: _dioLink,
        cache: _defaultCache,
        defaultFetchPolicies: options.defaultFetchPolicies,
      ),
    ]);
  }

  /// The underlying link
  late TypedLink _link;

  static late Cache _defaultCache;

  static late RequestController _requestController;

  /// The underlying dio link
  static late DioLink _dioLink;

  /// The options for the client
  final ClientOptions options;

  @override
  Stream<OperationResponse<TData, TVars>> request<TData, TVars>(
    OperationRequest<TData, TVars> request, [
    NextTypedLink<TData, TVars>? forward,
  ]) =>
      _link.request(request, forward);

  /// Resets the client adapter
  void resetClientAdapter({
    HttpClientAdapter? httpClientAdapter,
    bool force = false,
  }) =>
      _dioLink.resetHttpClientAdapter(
        adapter: httpClientAdapter,
        force: force,
      );

  /// closes the underlying client's connection
  void close({bool force = false}) => _dioLink.close(force: force);

  @override
  Future<void> dispose() async {
    await Future.wait([
      _requestController.close(),
      _dioLink.dispose(),
    ]);
  }
}
