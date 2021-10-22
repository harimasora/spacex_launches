import 'package:injectable/injectable.dart';
import 'package:spacex_launches/domain/core/platform/i_network_info.dart';
import 'package:spacex_launches/infrastructure/core/platform/data_connection_checker.dart';
import 'package:spacex_launches/locator.dart';

@LazySingleton(as: INetworkInfo)
class NetworkInfoImpl implements INetworkInfo {
  final _connectionChecker = locator<DataConnectionChecker>();

  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}
