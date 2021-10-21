import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_launches/application/spacex/launch_watcher/launch_watcher_bloc.dart';
import 'package:spacex_launches/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LaunchWatcherBloc()..add(const LaunchWatcherEvent.getLaunchesRequested())),
      ],
      child: MaterialApp.router(
        title: 'Tumla',
        theme: ThemeData.light(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
      ),
    );
  }
}
