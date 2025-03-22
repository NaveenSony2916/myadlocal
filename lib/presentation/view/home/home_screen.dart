import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import '../../../utils/common_appbar/custom_appbar.dart';
import '../../../utils/common_color/app_color.dart';
import '../../../utils/common_text/custom_text.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/home/home_view_model.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeProvider(
      builder: (context, child) {
        ///
        final HomeViewModel viewModel = Provider.of<HomeViewModel>(
          context,
          listen: true,
        );

        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabViewScreen(),
                CompaignView(),
                NotificationListView(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TabViewScreen extends StatelessWidget {
  const TabViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel vm = context.watch<HomeViewModel>();
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 220,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 18.0,
                              right: 18.0,
                              top: 45,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          "John Kennody",
                                          textType: CommonTextType.headline,
                                          textColor: AppColors.appDarkGrey,
                                          fontSize: 19,
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: AppColors.green,
                                              minRadius: 3.55,
                                            ),
                                            const SizedBox(width: 4),
                                            CustomText(
                                              "Advertiser",
                                              textType: CommonTextType.subtitle,
                                              textAlign: TextAlign.center,
                                              fontSize: 16,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/notification.png',
                                          height: 50,
                                          //  color: Get.appColors.primaryText,
                                        ),
                                        const SizedBox(width: 10),
                                        Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(0.0),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.redAccent,
                                                minRadius: 3.85,
                                              ),
                                            ),
                                            Container(
                                              width: 45.0,
                                              height: 45.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffb7c7df),
                                                image: const DecorationImage(
                                                  image: NetworkImage(
                                                    'http://i.imgur.com/QSev0hg.jpg',
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(50.0),
                                                    ),
                                                border: Border.all(
                                                  color: AppColors.pink,
                                                  width: 5.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      "Recent Campaigns",
                                      textType: CommonTextType.subtitle,
                                      textColor: AppColors.appDarkGrey,
                                      fontSize: 16,
                                    ),
                                    CustomText(
                                      "View all",
                                      textType: CommonTextType.subtitle,
                                      textColor: AppColors.appBlue,
                                      fontSize: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(height: 100, color: AppColors.appCyan),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 130.0),
                      child: SizedBox(
                        height: 170,
                        child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                width: 260,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      index == 0
                                          ? AppColors.appBlue
                                          : Colors.white,
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      index == 0
                                          ? AppColors.appBlue
                                          : Colors.white,
                                      index == 0
                                          ? AppColors.appBlue
                                          : Colors.white,
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 2,
                                      offset: const Offset(2, 0),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/message.png',
                                          height: 50,
                                          //  color: Get.appColors.primaryText,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              "Diaas Tst Bank",
                                              textType: CommonTextType.headline,
                                              fontSize: 14,
                                              textColor:
                                                  index == 0
                                                      ? Colors.white
                                                      : Colors.black,
                                              //  fontSize: 18,
                                              letterSpacing: 0.55,
                                            ),
                                            const SizedBox(height: 5),
                                            CustomText(
                                              "Location : UK",
                                              textType: CommonTextType.subtitle,
                                              fontSize: 14,
                                                 textColor: index == 0
                                                    ? Colors.white
                                                   : Colors.grey,
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          'assets/images/pdf.png',
                                          height: 30,
                                          //  color: Get.appColors.primaryText,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                "Monday,27 Oct 2024 ",
                                                textType:
                                                    CommonTextType.subtitle,
                                                textColor:
                                                    index == 0
                                                        ? Colors.white
                                                        : Colors.black,
                                                 fontSize: 12,
                                              ),
                                              const SizedBox(height: 5),
                                              CustomText(
                                                "08.00 am - 10.00 am",
                                                textType: CommonTextType.button,
                                                textColor:
                                                    index == 0
                                                        ? Colors.white
                                                        : Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: Container(
                    height: 110,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.only(
                        // bottomRight: Radius.circular(55),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 74, bottom: 1.0),
              child: Container(
                height: 115,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.only(
                    // bottomRight: Radius.circular(55),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CompaignView extends StatelessWidget {
  const CompaignView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    HomeViewModel vm = context.watch<HomeViewModel>();
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // vm.navigateToLicenseListScreen(context);
                },
                child: Container(
                  height: 100,
                  width: width / 2.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.166),
                        spreadRadius: 0.3,
                        blurRadius: 0.3,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Shimmer.fromColors(
                        highlightColor: Colors.grey,
                        baseColor: AppColors.black,
                        period: const Duration(milliseconds: 2000),
                        child: CustomText(
                          "Live Campaigns",
                          textType: CommonTextType.subtitle,
                          fontSize: 14,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/lc.png',
                            height: 30,
                            //  color: Get.appColors.primaryText,
                          ),
                          CustomText(
                            "01",
                            textType: CommonTextType.headline,
                            textAlign: TextAlign.end,
                            fontSize: 20,
                            textColor: AppColors.appBlue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  width: width / 2.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.appLightRed,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.166),
                        spreadRadius: 0.3,
                        blurRadius: 0.3,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      // vm.navigationToBankSuperVisionScreen(context);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Shimmer.fromColors(
                            highlightColor: Colors.grey,
                            baseColor: AppColors.black,
                            period: const Duration(milliseconds: 2000),
                            child: CustomText(
                              "Total Campaigns",
                              textType: CommonTextType.subtitle,
                              fontSize: 14,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/ot.png',
                              height: 35,
                              //  color: Get.appColors.primaryText,
                            ),
                            CustomText(
                              "21",
                              textType: CommonTextType.headline,
                              textAlign: TextAlign.end,
                              textColor: AppColors.appBlue,
                              fontSize: 20,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // vm.navigateToLicenseListScreen(context);
                },
                child: Container(
                  height: 100,
                  width: width / 2.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.appLightRed,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.166),
                        spreadRadius: 0.3,
                        blurRadius: 0.3,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Shimmer.fromColors(
                        highlightColor: Colors.grey,
                        baseColor: AppColors.black,
                        period: const Duration(milliseconds: 2000),
                        child: CustomText(
                          "Total Impressions",
                          textType: CommonTextType.subtitle,
                          textAlign: TextAlign.center,
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/tm.png',
                            height: 30,
                            //  color: Get.appColors.primaryText,
                          ),
                          CustomText(
                            "21",
                            textType: CommonTextType.headline,
                            textAlign: TextAlign.end,
                            textColor: AppColors.appBlue,
                            fontSize: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  width: width / 2.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.appLightBlue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.166),
                        spreadRadius: 0.3,
                        blurRadius: 0.3,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      // vm.navigationToBankSuperVisionScreen(context);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Shimmer.fromColors(
                            highlightColor: Colors.grey,
                            baseColor: AppColors.black,
                            period: const Duration(milliseconds: 2000),
                            child: CustomText(
                              "Open Tickets",
                              textType: CommonTextType.subtitle,
                              textAlign: TextAlign.center,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/oc.png',
                              height: 25,
                              //  color: Get.appColors.primaryText,
                            ),
                            CustomText(
                              "21",
                              textType: CommonTextType.headline,
                              textAlign: TextAlign.end,
                              textColor: AppColors.appBlue,
                              fontSize: 20,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                "Alert and Notifications",
                textType: CommonTextType.subtitle,
                textColor: Colors.black,
                fontSize: 16,
              ),
              CustomText(
                "View all",
                textType: CommonTextType.subtitle,
                textColor: AppColors.appBlue,
                fontSize: 16,
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 33,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 1.0,
                    left: 4,
                    right: 8,
                    bottom: 1,
                  ),
                  child: Container(
                    // height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == 0 ? AppColors.appBlue : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.166),
                          spreadRadius: 0.2,
                          blurRadius: 0.2,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 2.0,
                        right: 10,
                        left: 10,
                        bottom: 2,
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          index != 0
                              ? CircleAvatar(
                                minRadius: 8,
                                backgroundColor:
                                    index == 1
                                        ? AppColors.green
                                        : AppColors.black,
                              )
                              : const SizedBox(),
                          const SizedBox(width: 2),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 1.0,
                              bottom: 1,
                              left: 10,
                              right: 11,
                            ),
                            child: Center(
                              child: CustomText(
                                index == 0
                                    ? " All "
                                    : index == 1
                                    ? "UnRead"
                                    : "Deleted",
                                textColor:
                                    index == 0 ? Colors.white : AppColors.grey,
                                textAlign: TextAlign.center,
                                fontSize: 13,
                                textType: CommonTextType.headline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 14.0,
                    left: 4,
                    right: 4,
                    top: 0,
                  ),
                  child: Container(
                    // height: 50,
                    // width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.166),
                          spreadRadius: 0.2,
                          blurRadius: 0.2,
                          offset: const Offset(0.5, 0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/Picture.png',
                            height: 40,
                            //color: CustomColors.darkBlue,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    index == 0 ? "Dubin Demo" : "DK Bank",
                                    textType: CommonTextType.subtitle,
                                    fontSize: 14,
                                    textColor: Colors.black,
                                  ),
                                  const SizedBox(height: 5),
                                  CustomText(
                                    index == 0
                                        ? "Application No : MM00151"
                                        : "Application No : MM00152",
                                    textType: CommonTextType.subtitle,
                                    fontSize: 12,
                                  ),
                                  const SizedBox(height: 5),
                                  CustomText(
                                    "12-OCT-24",
                                    textType: CommonTextType.button,
                                    textColor: Colors.red,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors.appLightBlue,
                            child: Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
