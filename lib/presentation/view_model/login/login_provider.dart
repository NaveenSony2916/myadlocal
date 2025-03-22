
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../application/injections/injector.dart';
import '../../../../domain/services/navigation_service.dart';
import 'login_view_model.dart';

class LoginProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const LoginProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
        builder: builder,
        lazy: false,
        create: (BuildContext context) {
          return LoginViewModel(
           // loginRepository: injector<LoginRepository>(),
            navigationService: injector<NavigationService>(),
           // preferenceService: injector<SharedPreferenceService>(),
          );
        });
  }
}
