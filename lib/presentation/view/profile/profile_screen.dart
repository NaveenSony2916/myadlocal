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
          appBar: CommonAppbar(appBarName: "PROFILE"),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Container(
                        width: 85.0,
                        height: 85.0,
                        decoration: BoxDecoration(
                          color: const Color(0xffb7c7df),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'http://i.imgur.com/QSev0hg.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          border: Border.all(color: AppColors.pink, width: 5.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          " xxxxxxxxxxxx",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          " xxxxxxxxxxxx",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          " xxxxxxxxxxxx",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.right,
                          textColor: AppColors.black,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.password,
                                color: AppColors.appBlue,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              CustomText(
                                "Change Password",
                                textType: CommonTextType.subtitle,
                                textAlign: TextAlign.start,
                                textColor: AppColors.appBlue,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Icon(
                                Icons.notification_add_outlined,
                                color: AppColors.appBlue,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              CustomText(
                                "Notifications",
                                textType: CommonTextType.subtitle,
                                textAlign: TextAlign.start,
                                textColor: AppColors.appBlue,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Icon(
                                Icons.logout,
                                color: AppColors.appBlue,
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              CustomText(
                                "Logout",
                                textType: CommonTextType.subtitle,
                                textAlign: TextAlign.start,
                                textColor: AppColors.appBlue,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
