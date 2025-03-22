import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../application/injections/injector.dart';
import '../../../domain/services/navigation_service.dart';
import 'compaign_view_model.dart';

class CompaignProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const CompaignProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CompaignViewModel>(
      builder: builder,
      lazy: false,
      create: (BuildContext context) {
        return CompaignViewModel(
          injector<NavigationService>(),
          //injector<NotificationRepository>(),
          //injector<SharedPreferenceService>(),
        );
      },
    );
  }
}
