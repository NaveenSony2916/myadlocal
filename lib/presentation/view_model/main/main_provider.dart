import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../application/injections/injector.dart';
import '../../../domain/services/navigation_service.dart';
import 'main_view_model.dart';

class MainProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const MainProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainViewModel>(
        builder: builder,
        lazy: false,
        create: (BuildContext context) {
          return MainViewModel(
            navigationService: injector<NavigationService>(),
          );
        });
  }
}
