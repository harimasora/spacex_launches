// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../../domain/spacex/launch.dart' as _i7;
import '../home/home_page.dart' as _i1;
import '../launches/launch_details/launch_details_page.dart' as _i4;
import '../launches/launches_overview/launches_overview_page.dart' as _i3;
import '../settings/settings_page.dart' as _i5;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LaunchesRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    LaunchesOverviewRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LaunchesOverviewPage());
    },
    LaunchDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<LaunchDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.LaunchDetailsPage(launch: args.launch, key: args.key));
    },
    SettingsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(LaunchesRouter.name,
              path: 'launches',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(LaunchesOverviewRoute.name,
                    path: '', parent: LaunchesRouter.name),
                _i2.RouteConfig(LaunchDetailsRoute.name,
                    path: 'launch-details-page', parent: LaunchesRouter.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: LaunchesRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i2.RouteConfig(SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(SettingsRoute.name,
                    path: '', parent: SettingsRouter.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: SettingsRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ])
        ])
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.EmptyRouterPage]
class LaunchesRouter extends _i2.PageRouteInfo<void> {
  const LaunchesRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'launches', initialChildren: children);

  static const String name = 'LaunchesRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class SettingsRouter extends _i2.PageRouteInfo<void> {
  const SettingsRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i3.LaunchesOverviewPage]
class LaunchesOverviewRoute extends _i2.PageRouteInfo<void> {
  const LaunchesOverviewRoute() : super(name, path: '');

  static const String name = 'LaunchesOverviewRoute';
}

/// generated route for [_i4.LaunchDetailsPage]
class LaunchDetailsRoute extends _i2.PageRouteInfo<LaunchDetailsRouteArgs> {
  LaunchDetailsRoute({required _i7.Launch launch, _i6.Key? key})
      : super(name,
            path: 'launch-details-page',
            args: LaunchDetailsRouteArgs(launch: launch, key: key));

  static const String name = 'LaunchDetailsRoute';
}

class LaunchDetailsRouteArgs {
  const LaunchDetailsRouteArgs({required this.launch, this.key});

  final _i7.Launch launch;

  final _i6.Key? key;
}

/// generated route for [_i5.SettingsPage]
class SettingsRoute extends _i2.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
