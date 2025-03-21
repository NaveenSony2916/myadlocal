import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../common_color/app_color.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 30,
      width: 30,
      child: LoadingIndicator(
          indicatorType: Indicator.lineSpinFadeLoader,
          colors: <Color>[AppColors.pink],
          strokeWidth: 3,
          backgroundColor: Colors.transparent,
          pathBackgroundColor: AppColors.cyan),
    ));
  }
}
