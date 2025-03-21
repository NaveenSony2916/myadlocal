import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:local/utils/common_color/app_color.dart';
import 'package:provider/provider.dart';
import '../../../utils/helper/asset_helper.dart';
import '../../view_model/splash/splash_provider.dart';
import '../../view_model/splash/splash_view_model.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashProvider(builder: (context, child) {
      ///
      final SplashViewModel viewModel =
          Provider.of<SplashViewModel>(context, listen: true);

      return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("MyAddsLocal", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: AppColors.green),))
            ],
          ));
    });
  }
}
