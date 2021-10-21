import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:spacex_launches/locator.dart';
import 'package:spacex_launches/presentation/core/app_widget.dart';

void main() {
  configureDependencies(Environment.prod);
  runApp(AppWidget());
}
