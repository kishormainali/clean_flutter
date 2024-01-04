abstract class NetworkInfo {
  Future<bool> get isConnected;

  Stream<NetworkStatus> get onStatusChanged;
}

enum NetworkStatus { online, offline }
