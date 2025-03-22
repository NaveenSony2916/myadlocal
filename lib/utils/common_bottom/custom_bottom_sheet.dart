import 'package:flutter/material.dart';
import '../common_color/app_color.dart';
import '../common_text/custom_text.dart';

///
Future<void> bottomSheet(BuildContext context,
    {Widget? content,
    Color? backGroundColor,
    int? index,
    RoundedRectangleBorder? shape,
    bool? isScrollControlled}) async {
  showModalBottomSheet<void>(
    context: context,
    isDismissible: false,
    isScrollControlled: isScrollControlled ?? false,
    shape: shape ??
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: AppColors.cyan)),
    backgroundColor: backGroundColor ?? AppColors.pink,
    builder: (BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            content ??  CustomText('hey welcome'),
          ],
        ),
      );
    },
  );
}

///
Future<bool?> bottomSheetTwo(BuildContext context,
    {Widget? contentTitle,
    Widget? description,
    Color? backGroundColor,
    int? index,
    bool? isScrollControlled}) async {
  return showModalBottomSheet<bool?>(
    enableDrag: false,
    isDismissible: false,
    //backgroundColor: Colors.white,
    context: context,

    isScrollControlled: isScrollControlled ?? false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(50.0),
        topLeft: Radius.circular(50.0),
      ),
    ),

    builder: (BuildContext context) {
      return CustomText('hey welcome');
    },
  );
}
