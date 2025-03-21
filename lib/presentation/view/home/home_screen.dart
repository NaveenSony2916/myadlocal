import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/common_appbar/custom_appbar.dart';
import '../../../utils/common_text/custom_text.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/home/home_view_model.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeProvider(builder: (context, child) {
      ///
      final HomeViewModel viewModel =
          Provider.of<HomeViewModel>(context, listen: true);

      return Scaffold(
          appBar: CommonAppbar(
            appBarName: "HOME",
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: CustomText(
                "Welcome",
                textType: CommonTextType.headline,
              ))
            ],
          ));
    });
  }
}
