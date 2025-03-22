import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../application/injections/injector.dart';
import '../../../domain/services/navigation_service.dart';
import 'notification_view_model.dart';

class NotificationProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const NotificationProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotificationViewModel>(
      builder: builder,
      lazy: false,
      create: (BuildContext context) {
        return NotificationViewModel(
          injector<NavigationService>(),
          //injector<NotificationRepository>(),
          //injector<SharedPreferenceService>(),
        );
      },
    );
  }
}
