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
          appBar: CommonAppbar(appBarName: "NotificationScreen"),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CustomText(
                  "Welcome NotificationScreen",
                  textType: CommonTextType.subtitle,
                  textColor: AppColors.appBlue,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
