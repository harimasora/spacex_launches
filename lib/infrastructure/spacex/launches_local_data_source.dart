import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spacex_launches/domain/core/exceptions.dart';
import 'package:spacex_launches/domain/spacex/i_launches_local_data_source.dart';
import 'package:spacex_launches/infrastructure/spacex/launch_dtos.dart';
import 'package:spacex_launches/locator.dart';

@LazySingleton(as: ILaunchesLocalDataSource)
class LaunchesLocalDataSourceImpl implements ILaunchesLocalDataSource {
  final sharedPreferences = locator<SharedPreferences>();

  @override
  Future<void> cacheLaunches(List<LaunchDTO> launchesToCache) async {
    await sharedPreferences.setString(
        ILaunchesLocalDataSource.cachedLaunchesKey, jsonEncode(launchesToCache.map((e) => e.toJson()).toList()));
    return;
  }

  @override
  Future<List<LaunchDTO>> getLastLaunches() async {
    final jsonString = sharedPreferences.getString(ILaunchesLocalDataSource.cachedLaunchesKey);
    if (jsonString != null) {
      final decodedJsonList = jsonDecode(jsonString) as List;
      final List<LaunchDTO> dtos =
          decodedJsonList.map((dynamic e) => LaunchDTO.fromJson(e as Map<String, dynamic>)).toList();
      return dtos;
    } else {
      throw CacheException();
    }
  }
}
