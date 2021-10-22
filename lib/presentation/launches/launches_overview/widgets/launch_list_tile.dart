import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spacex_launches/domain/spacex/launch.dart';
import 'package:spacex_launches/presentation/routes/router.gr.dart';

class LaunchListTile extends StatelessWidget {
  const LaunchListTile({required this.launch, Key? key}) : super(key: key);

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 40,
        height: 40,
        child: launch.patchUrl.value.when(left: (l) => Container(), right: (r) => Image.network(r)),
      ),
      title: Text(launch.name.getOrCrash()),
      subtitle: Text(launch.launchDate.getOrCrash().toString()),
      trailing: Text(launch.flightNumber.getOrCrash()),
      onTap: () => context.router.push(LaunchDetailsRoute(launch: launch)),
    );
  }
}
