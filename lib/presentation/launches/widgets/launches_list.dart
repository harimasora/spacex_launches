import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_launches/application/spacex/launch_watcher/launch_watcher_bloc.dart';

class LaunchesList extends StatelessWidget {
  const LaunchesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchWatcherBloc, LaunchWatcherState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          loadInProgress: () => const Center(child: CircularProgressIndicator()),
          loadSuccess: (launches) => ListView.separated(
            itemCount: launches.length,
            itemBuilder: (context, index) {
              final launch = launches[index];
              return ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: launch.patchUrl.value.when(left: (l) => Container(), right: (r) => Image.network(r)),
                ),
                title: Text(launch.name.getOrCrash()),
                subtitle: Text(launch.launchDate.getOrCrash().toString()),
                trailing: Text(launch.flightNumber.getOrCrash()),
                onTap: null,
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          ),
          loadFailure: (f) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  f.when(
                    unexpected: () => 'An unexpected error occurred. Please try again.',
                    serverFailure: () => 'A server failure occurred. Please try again.',
                    cacheFailure: () => 'A cache failure occurred. Please try again.',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () =>
                      context.read<LaunchWatcherBloc>()..add(const LaunchWatcherEvent.getLaunchesRequested()),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
