/// {@template network_info}
/// A class to check network status
/// {@endtemplate}
abstract class NetworkInfo {
  Future<bool> get isConnected;

  Stream<NetworkStatus> get onStatusChanged;
}

/// {@template network_status}
/// Enum to represent network status
/// {@endtemplate}
enum NetworkStatus { online, offline }
