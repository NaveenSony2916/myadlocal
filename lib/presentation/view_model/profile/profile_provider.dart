import 'package:flutter/material.dart';
import 'package:local/presentation/view_model/profile/profile_view_model.dart';
import 'package:provider/provider.dart';
import '../../../application/injections/injector.dart';
import '../../../domain/services/navigation_service.dart';

class ProfileProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const ProfileProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProfileViewModel>(
      builder: builder,
      lazy: false,
      create: (BuildContext context) {
        return ProfileViewModel(
          //injector<SharedPreferenceService>(),
          injector<NavigationService>(),
        );
      },
    );
  }
}
