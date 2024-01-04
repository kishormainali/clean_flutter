import 'dart:io';

import 'package:dio/io.dart';

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
            client.idleTimeout = idleTimeout;

            /// Gets and sets the connection timeout.
            ///
            /// When connecting to a new host exceeds this timeout, a [SocketException] is thrown.
            /// The timeout applies only to connections initiated after the timeout is set.
            client.connectionTimeout = connectionTimeout;
            return client;
          },
        );
}
