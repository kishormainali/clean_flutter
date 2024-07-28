import 'package:_clean_flutter_internal/src/network/_network_info_impl.dart';

/// {@template network_info}
/// A class to check network status
/// {@endtemplate}
abstract class NetworkInfo {
  /// Check if the device is connected to the internet
  Future<bool> get isConnected;

  /// Stream to listen to network status changes
  Stream<NetworkStatus> get onStatusChanged;

  /// default implementation of [NetworkInfo]
  static NetworkInfo createInstance() => const NetworkInfoImpl();
}

/// {@template network_status}
/// Enum to represent network status
/// {@endtemplate}
enum NetworkStatus { online, offline }
