import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spacex_launches/infrastructure/core/platform/data_connection_checker.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();

  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();
}
