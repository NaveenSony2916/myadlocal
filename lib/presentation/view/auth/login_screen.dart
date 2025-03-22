import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/common_color/app_color.dart';
import '../../view_model/login/login_provider.dart';
import '../../view_model/login/login_view_model.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginProvider(
      builder: (context, child) {
        final LoginViewModel vm = Provider.of<LoginViewModel>(
          context,
          listen: true,
        );

        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.appBlue,
          body: SingleChildScrollView(),
        );
      },
    );
  }
}
