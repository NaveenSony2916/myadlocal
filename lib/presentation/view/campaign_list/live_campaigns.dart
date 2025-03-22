import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/common_appbar/custom_appbar.dart';
import '../../../utils/common_color/app_color.dart';
import '../../../utils/common_text/custom_text.dart';
import '../../view_model/compaign/compaign_provider.dart';
import '../../view_model/compaign/compaign_view_model.dart';

@RoutePage()
class LiveCampaignsScreen extends StatelessWidget {
  const LiveCampaignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CompaignProvider(
      builder: (context, child) {
        ///
        final CompaignViewModel viewModel = Provider.of<CompaignViewModel>(
          context,
          listen: true,
        );

        return Scaffold(
          appBar: CommonAppbar(appBarName: "LIVE CAMPAIGN"),
          body: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 14, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueAccent.withOpacity(
                              0.1,
                            ), // Shadow color with opacity
                            offset: Offset(
                              0,
                              1,
                            ), // Horizontal and vertical offset of the shadow
                            blurRadius: 0, // Spread of the shadow
                            spreadRadius: 2, // How much the shadow spreads
                          ),
                        ],
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      "Phoneix Market City",
                                      textType: CommonTextType.headline,
                                      fontSize: 14,
                                      textColor: Colors.grey,
                                      //  fontSize: 18,
                                      letterSpacing: 0.55,
                                    ),
                                    const SizedBox(height: 5),
                                    CustomText(
                                      "Location : UK",
                                      textType: CommonTextType.subtitle,
                                      fontSize: 12,
                                      textColor: Colors.grey,
                                    ),
                                    const SizedBox(height: 5),
                                    CustomText(
                                      "Campaign ID : 3001",
                                      textType: CommonTextType.subtitle,
                                      fontSize: 12,
                                      textColor: Colors.grey,
                                    ),
                                    const SizedBox(height: 5),
                                    CustomText(
                                      "03 Mar 2025 : 20 Mar 2025",
                                      textType: CommonTextType.subtitle,
                                      fontSize: 13,
                                      textColor: Colors.blue,
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          minRadius: 5,
                                          backgroundColor: AppColors.yellow,
                                        ),
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
                                              "Progress",
                                              textColor: AppColors.yellow,
                                              textAlign: TextAlign.center,
                                              fontSize: 13,
                                              textType: CommonTextType.subtitle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomText(
                                  "RS145",
                                  textType: CommonTextType.headline,
                                  fontSize: 13,
                                  textColor: AppColors.appBlue,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/lc.png',
                                    height: 30,
                                    //  color: Get.appColors.primaryText,
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
              );
            },
          ),
        );
      },
    );
  }
}
