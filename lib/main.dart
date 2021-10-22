import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:spacex_launches/locator.dart';
import 'package:spacex_launches/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.prod);
  runApp(AppWidget());
}
