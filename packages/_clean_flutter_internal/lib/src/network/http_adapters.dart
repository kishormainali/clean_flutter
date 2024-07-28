import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart' as http2;

///{@template default_http_adapter}
/// The default [HttpClientAdapter] for mobile platforms.
/// This adapter will use the "dart:io" HttpClient.
/// {@endtemplate}
class DefaultHttpAdapter extends IOHttpClientAdapter {
  ///{@macro default_http_adapter}
  DefaultHttpAdapter({
    /// validateCertificate is the callback to validate the certificate
    super.validateCertificate,

    /// context is the security context for new secure socket connections.
    SecurityContext? context,

    /// proxy is the callback to return a proxy url for request.
    String Function(Uri)? proxy,

    /// onBadCertificate is the callback for handling bad certificates.
    BadCertificateCallback? onBadCertificate,

    /// Gets and sets the idle timeout of non-active persistent (keep-alive) connections.
    Duration idleTimeout = const Duration(seconds: 15),

    /// Gets and sets the connection timeout.
    ///
    /// When connecting to a new host exceeds this timeout, a [SocketException] is thrown.
    /// The timeout applies only to connections initiated after the timeout is set.
    Duration connectionTimeout = const Duration(seconds: 30),
  }) : super(
          createHttpClient: () {
            final client = HttpClient(context: context);

            /// proxy is the callback to return a proxy url for request.
            if (proxy != null) {
              client.findProxy = proxy;
            }

            /// validateCertificate is the callback for handling bad certificates.
            if (onBadCertificate != null) {
              client.badCertificateCallback = onBadCertificate;
            }

            /// Gets and sets the idle timeout of non-active persistent (keep-alive) connections.
            /// Gets and sets the connection timeout.
            ///
            /// When connecting to a new host exceeds this timeout, a [SocketException] is thrown.
            /// The timeout applies only to connections initiated after the timeout is set.
            client
              ..idleTimeout = idleTimeout
              ..connectionTimeout = connectionTimeout;

            return client;
          },
        );
}

/// {@template default_http2_adapter}
/// The default [HttpClientAdapter] for mobile platforms.
/// This adapter will use the "dio_http2_adapter" HttpClient.
/// {@endtemplate}
class DefaultHttp2Adapter extends http2.Http2Adapter {
  DefaultHttp2Adapter({
    Duration idleTimeout = const Duration(seconds: 15),

    /// context is the security context for new secure socket connections.
    SecurityContext? context,

    /// proxy is the callback to return a proxy url for request.
    Uri? proxy,

    /// onBadCertificate is the callback for handling bad certificates.
    bool Function(X509Certificate)? onBadCertificate,

    /// validateCertificate is the callback to validate the certificate
    http2.ValidateCertificate? validateCertificate,
  }) : super(
          http2.ConnectionManager(
            idleTimeout: idleTimeout,
            onClientCreate: (uri, clientSettings) {
              clientSettings

                /// context is the security context for new secure socket connections.
                ..context = context

                /// proxy is the callback to return a proxy url for request.
                ..proxy = proxy

                /// onBadCertificate is the callback for handling bad certificates.
                ..onBadCertificate = onBadCertificate

                /// validateCertificate is the callback to validate the certificate
                ..validateCertificate = validateCertificate;
            },
          ),
        );
}
