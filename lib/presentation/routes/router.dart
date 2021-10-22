import 'package:auto_route/auto_route.dart';
import 'package:spacex_launches/presentation/home/home_page.dart';
import 'package:spacex_launches/presentation/launches/launch_details/launch_details_page.dart';
import 'package:spacex_launches/presentation/launches/launches_overview/launches_overview_page.dart';
import 'package:spacex_launches/presentation/settings/settings_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      page: HomePage,
      initial: true,
      children: [
        AutoRoute<dynamic>(
          path: 'launches',
          name: 'LaunchesRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<dynamic>(path: '', page: LaunchesOverviewPage),
            AutoRoute<dynamic>(page: LaunchDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute<dynamic>(
          path: 'settings',
          name: 'SettingsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<dynamic>(path: '', page: SettingsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
