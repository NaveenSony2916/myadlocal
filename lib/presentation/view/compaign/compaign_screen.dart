import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:local/presentation/view_model/compaign/compaign_view_model.dart';
import 'package:local/utils/common_color/app_color.dart';
import 'package:local/utils/common_textfield/common_textfield.dart';
import 'package:provider/provider.dart';
import '../../../utils/common_appbar/custom_appbar.dart';
import '../../../utils/common_text/custom_text.dart';
import '../../view_model/compaign/compaign_provider.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/home/home_view_model.dart';

@RoutePage()
class CompaignScreen extends StatelessWidget {
  const CompaignScreen({super.key});

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
          appBar: CommonAppbar(appBarName: "Compaign"),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CustomText(
                  "Welcome Compaign",
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
