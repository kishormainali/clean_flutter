import 'package:clean_network/src/network/network_info.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkInfoImpl implements NetworkInfo {
  const NetworkInfoImpl();

  InternetConnection get _connection => InternetConnection.createInstance();

  @override
  Future<bool> get isConnected => _connection.hasInternetAccess;

  @override
  Stream<NetworkStatus> get onStatusChanged =>
      _connection.onStatusChange.map((event) {
        if (event == InternetStatus.connected) {
          return NetworkStatus.online;
        } else {
          return NetworkStatus.offline;
        }
      });
}
