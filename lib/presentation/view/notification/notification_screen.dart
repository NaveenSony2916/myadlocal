import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:local/presentation/view_model/notification/notification_provider.dart';
import 'package:local/presentation/view_model/notification/notification_view_model.dart';
import 'package:provider/provider.dart';
import '../../../utils/common_appbar/custom_appbar.dart';
import '../../../utils/common_color/app_color.dart';
import '../../../utils/common_text/custom_text.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/home/home_view_model.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationProvider(
      builder: (context, child) {
        ///
        final NotificationViewModel viewModel =
            Provider.of<NotificationViewModel>(context, listen: true);

        return Scaffold(
          appBar: CommonAppbar(appBarName: "NOTIFICATIONS"),
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
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueAccent.withOpacity(0.166),
                            spreadRadius: 0.2,
                            blurRadius: 2,// Shadow color with opacity
                            offset: Offset(
                              0,
                              1,
                            ), // Horizontal and vertical offset of the shadow
                          // How much the shadow spreads
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      "Now Advertisement Deleted",
                                      textType: CommonTextType.subtitle,
                                      textColor: AppColors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(height: 5),
                                    Tooltip(
                                      message: "MVJDSN",
                                      waitDuration: Duration(milliseconds: 500),
                                      child: SizedBox(
                                        width: 200,
                                        child: CustomText(
                                          "Duration Time 2 Feb 2025",
                                          textType: CommonTextType.subtitle,
                                          textColor: AppColors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          textAlign: TextAlign.start,
                                          overflow:
                                              TextOverflow
                                                  .ellipsis, // Apply ellipsis for long text
                                          maxLines:
                                              3, // Ensures single-line text
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/notification.png',
                                height: 30,
                                //  color: Get.appColors.primaryText,
                              ),
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
