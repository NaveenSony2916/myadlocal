import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:local/utils/app_text/app_text.dart';
import 'package:local/utils/common_textfield/common_textfield.dart';
import 'package:provider/provider.dart';
import '../../../utils/common_color/app_color.dart';
import '../../../utils/common_text/custom_text.dart';
import '../../../utils/custom_checkbox/custom_checkbox.dart';
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
          backgroundColor: AppColors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: vm.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Center(
                      child: Image.asset('assets/images/logo.png', height: 100),
                    ),
                    SizedBox(height: 20),
                    CustomText(
                      AppText.welcome,
                      textColor: AppColors.black,
                      textAlign: TextAlign.center,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 5),
                    CustomText(
                      AppText.bySigning,
                      textColor: AppColors.black,
                      textAlign: TextAlign.center,
                      fontSize: 14,
                    ),
                    TextButton(
                      onPressed: () {},
                      // style: ButtonStyle(
                      //   padding: MaterialStateProperty.all<EdgeInsets>(
                      //     EdgeInsets.zero,
                      //   ),
                      // ),
                      child: Text(
                        AppText.privacyPolicy,
                        style: TextStyle(color: AppColors.appLightBlue1),
                      ),
                    ),
                    SizedBox(height: 20),
                    CommonTextField(
                      hintText: AppText.emailAddress,
                      fillColor: AppColors.bgGrey,
                      filled: true,
                      hintColor: AppColors.appLightGrey,
                      color: AppColors.appLightGrey,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.mail_outline,
                          color: AppColors.appLightGrey,
                        ),
                      ),
                      controller: vm.emailIdController,
                      validator: (value) => vm.validateEmail(value),
                    ),
                    CommonTextField(
                      hintText: AppText.password,
                      fillColor: AppColors.bgGrey,
                      filled: true,
                      color: AppColors.appLightGrey,
                      hintColor: AppColors.appLightGrey,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.lock, color: AppColors.appLightGrey),
                      ),
                      controller: vm.passwordController,
                      validator: (value) => vm.validatePassword(value),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        CustomCheckbox(
                          isChecked: vm.rememberPassword,
                          onChanged: vm.toggleRememberPassword,
                        ),
                        SizedBox(width: 10),
                        CustomText(
                          AppText.rememberPassword,
                          textColor: AppColors.black,
                          textAlign: TextAlign.center,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: vm.submitLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          AppText.login,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    CustomText(
                      AppText.loginWithTouchId,
                      textColor: AppColors.black,
                      textAlign: TextAlign.center,
                      fontSize: 14,
                    ),
                    SizedBox(height: 10),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/icn_fingerprint.png',
                        height: 70,
                        width: 70,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 10),
                    CustomText(
                      AppText.connect,
                      textColor: AppColors.black,
                      textAlign: TextAlign.center,
                      fontSize: 14,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icn_facebook.png',
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icn_insta.png',
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icn_pintrest.png',
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icn_linkedin.png',
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
