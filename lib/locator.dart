import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:spacex_launches/locator.config.dart';

final locator = GetIt.instance;

@InjectableInit()
void configureDependencies(String env) => $initGetIt(locator, environment: env);
