import 'package:flutter/cupertino.dart';

import '../../application/routing/app_router.dart';
import '../../application/routing/app_router.gr.dart';

class NavigationService {
  final AppRouter appRouter;

  ///
  NavigationService(this.appRouter);

  /// Common popup
  Future<void> popIt(BuildContext context) async {
    Navigator.of(context).pop();
  }

  ///
  GlobalKey<NavigatorState> getNavigatorKey() {
    return appRouter.navigatorKey;
  }

  ///
  Future<void> navigateToHomeScreen() async {
    appRouter.navigate(const HomeRoute());
  }

  ///
  Future<void> navigateToMainScreen() async {
    appRouter.navigate(const MainRoute());
  }

  ///
  Future<void> navigateToLoginScreen() async {
    appRouter.navigate(const LoginRoute());
  }

  ///
  Future<void> navigationToLiveCampaign() async {
    appRouter.navigate(const LiveCampaignsRoute());
  }

  ///
  Future<void> navigationToOpenTickets() async {
    appRouter.navigate(const OpenTicketsRoute());
  }

  ///
  Future<void> navigationToTotalCampaign() async {
    appRouter.navigate(const TotalCampaignRoute());
  }

  ///
  Future<void> navigationToTotalImpressions() async {
    appRouter.navigate(const TotalImpressionsRoute());
  }
}
