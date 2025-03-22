import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:local/presentation/view_model/profile/profile_provider.dart';
import 'package:local/presentation/view_model/profile/profile_view_model.dart';
import 'package:provider/provider.dart';
import '../../../utils/common_appbar/custom_appbar.dart';
import '../../../utils/common_color/app_color.dart';
import '../../../utils/common_text/custom_text.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/home/home_view_model.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileProvider(
      builder: (context, child) {
        ///
        final ProfileViewModel viewModel = Provider.of<ProfileViewModel>(
          context,
          listen: true,
        );

        return Scaffold(
          appBar: CommonAppbar(appBarName: "ProfileScreen"),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundColor: AppColors.appBlue,
                        child: Icon(
                          Icons.person,
                          color: AppColors.white,
                          size: 80,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "Customer Name :",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                        CustomText(
                          "NA",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "Phone Number :",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                        CustomText(
                          "xxxxxxxxxxxx",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "Address :",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                        CustomText(
                          "xxxxxxxxxxxx",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 150),
                Container(
                  width: double.infinity,
                  height: 300,
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 60),
                  decoration: BoxDecoration(
                    //color: AppColors.purple,
                    gradient: LinearGradient(
                      colors: [AppColors.appBlue, AppColors.appLightBlue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                      topLeft: Radius.circular(80),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.password, color: Colors.white, size: 25),
                          SizedBox(width: 20),
                          CustomText(
                            "Change Password",
                            textType: CommonTextType.subtitle,
                            textAlign: TextAlign.start,
                            textColor: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.logout, color: Colors.white, size: 25),
                          SizedBox(width: 20),
                          CustomText(
                            "Logout",
                            textType: CommonTextType.subtitle,
                            textAlign: TextAlign.start,
                            textColor: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
