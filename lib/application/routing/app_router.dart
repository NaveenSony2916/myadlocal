import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(path: '/', page: SplashRoute.page, initial: true),
    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'compaign', page: CompaignRoute.page),
        AutoRoute(path: 'notification', page: NotificationRoute.page),
        AutoRoute(path: 'profile', page: ProfileRoute.page),
      ],
    ),
    AutoRoute(path: '/login', page: LoginRoute.page),
    AutoRoute(path: '/liveCampaigns', page: LiveCampaignsRoute.page),
    AutoRoute(path: '/openTickets', page: OpenTicketsRoute.page),
    AutoRoute(path: '/totalCampaign', page: TotalCampaignRoute.page),
    AutoRoute(path: '/totalImpressions', page: TotalImpressionsRoute.page),
  ];
}
