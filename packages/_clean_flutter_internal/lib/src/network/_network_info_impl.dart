import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'network_info.dart';

/// {@template network_info_impl}
/// A class to check network status
/// {@endtemplate}
class NetworkInfoImpl implements NetworkInfo {
  /// {@macro network_info_impl}
  const NetworkInfoImpl();

  InternetConnection get _connection => InternetConnection.createInstance();

  @override
  Future<bool> get isConnected => _connection.hasInternetAccess;

  @override
  Stream<NetworkStatus> get onStatusChanged {
    return _connection.onStatusChange.map((event) {
      if (event == InternetStatus.connected) {
        return NetworkStatus.online;
      } else {
        return NetworkStatus.offline;
      }
    });
  }
}
