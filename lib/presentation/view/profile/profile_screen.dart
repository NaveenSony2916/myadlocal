import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:local/presentation/view_model/profile/profile_provider.dart';
import 'package:local/presentation/view_model/profile/profile_view_model.dart';
import 'package:provider/provider.dart';
import '../../../application/routing/app_router.gr.dart';
import '../../../utils/common_bottom/custom_bottom_sheet.dart';
import '../../../utils/common_color/app_color.dart';
import '../../../utils/common_text/custom_text.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileProvider(
      builder: (context, child) {
        ///
        final ProfileViewModel vm = Provider.of<ProfileViewModel>(
          context,
          listen: true,
        );

        return Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: true,
          //    appBar: CommonAppbar(appBarName: "PROFILE"),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      // Custom Painted Background
                      ClipPath(
                        clipper: HeaderClipper(),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [AppColors.appBlue, Colors.cyan],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),

                      // Back Button
                      /*  Positioned(
                        top: 40,
                        left: 20,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),*/

                      // Profile Info
                      Positioned(
                        top: 80,
                        left: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " Suresh",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              " +91 9069754534",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              " No D 171, Anna Nagar East, Chennai ...",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Profile Image
                      Positioned(
                        top: 170,
                        right: 60,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            InkWell(
                              onTap: () {
                                context.tabsRouter.setActiveIndex(3);
                              },
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
                                  border: Border.all(
                                    color: AppColors.white,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  bottomSheet(context);
                                },
                                child: Row(
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
                                      textColor: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                              InkWell(
                                onTap: () {
                                  context.tabsRouter.setActiveIndex(2);
                                },
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        context.tabsRouter.setActiveIndex(2);
                                      },
                                      child: Icon(
                                        Icons.notification_add_outlined,
                                        color: AppColors.appBlue,
                                        size: 25,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    CustomText(
                                      "Notifications",
                                      textType: CommonTextType.subtitle,
                                      textAlign: TextAlign.start,
                                      textColor: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                              InkWell(
                                onTap: () {
                                  //   context.tabsRouter.setActiveIndex(2);
                                },
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // context.tabsRouter.setActiveIndex(2);
                                      },
                                      child: Icon(
                                        Icons.terminal_sharp,
                                        color: AppColors.appBlue,
                                        size: 25,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    CustomText(
                                      "Terms and conditions",
                                      textType: CommonTextType.subtitle,
                                      textAlign: TextAlign.start,
                                      textColor: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                              InkWell(
                                onTap: () async {
                                  final intent = AndroidIntent(
                                    action:
                                        'android.settings.SETTINGS', // Opens the main settings page
                                    flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
                                  );
                                  await intent.launch();

                                  // context.tabsRouter.setActiveIndex(2);
                                },
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        final intent = AndroidIntent(
                                          action:
                                              'android.settings.SETTINGS', // Opens the main settings page
                                          flags: <int>[
                                            Flag.FLAG_ACTIVITY_NEW_TASK,
                                          ],
                                        );
                                        await intent.launch();
                                        //  context.tabsRouter.setActiveIndex(2);
                                      },
                                      child: Icon(
                                        Icons.settings,
                                        color: AppColors.appBlue,
                                        size: 25,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    CustomText(
                                      "Settings",
                                      textType: CommonTextType.subtitle,
                                      textAlign: TextAlign.start,
                                      textColor: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                              InkWell(
                                onTap: () {
                                  debugPrint("Logout button Pressed!!!!");

                                  AutoRouter.of(context).pushAndPopUntil(
                                    const LoginRoute(),
                                    predicate: (_) => false,
                                  );
                                },
                                child: Row(
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
                                      textColor: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// Custom Painter for the Curved Header
class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height + 30,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
