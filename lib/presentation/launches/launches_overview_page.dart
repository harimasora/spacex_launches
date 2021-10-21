import 'package:flutter/material.dart';
import 'package:spacex_launches/presentation/launches/widgets/launches_list.dart';

class LaunchesOverviewPage extends StatelessWidget {
  const LaunchesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LaunchesOverviewPage')),
      body: const LaunchesList(),
    );
  }
}