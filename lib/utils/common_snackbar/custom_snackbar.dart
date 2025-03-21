import 'package:flutter/material.dart';

import '../common_color/app_color.dart';
import '../common_text/custom_text.dart';

void showCustomSnackBar(BuildContext context,
    {String? message, String? actionLabel, VoidCallback? onAction}) {
  final snackBar = SnackBar(
    backgroundColor: AppColors.cyan,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.all(16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    content: CustomText(
      message ?? 'This is a custom SnackBar message!',
      textType: CommonTextType.headline,
    ),
    action: actionLabel != null
        ? SnackBarAction(
            label: actionLabel,
            textColor: Colors.white,
            onPressed: onAction ?? () {},
          )
        : null,
    duration: const Duration(seconds: 3),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
/*
ElevatedButton(
onPressed: () {
showCustomSnackBar(
context,
message: "Hello! This is a custom SnackBar.",
actionLabel: "UNDO",
onAction: () {
// Define action for the UNDO button here
ScaffoldMessenger.of(context).hideCurrentSnackBar();
},
);
},
child: const Text('Show Custom SnackBar'),
),*/

///
class AppSnackBar {
  ///
  /// show on success case
  ///
  static successSnackBar(BuildContext context,
      {String? contentMessage, bool? showUndo}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: CustomText(
        contentMessage ?? 'Write heere any message',
      ),
      backgroundColor: AppColors.cyan,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.cyan, width: 2),
          borderRadius: BorderRadius.circular(16)),
    ));
  }

  ///
  /// show to falirue case
  ///
  static falirueSnackBar(BuildContext context, {String? contentMessage}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: CustomText(
        contentMessage ?? 'Network Error',
      ),
      backgroundColor: AppColors.cyan,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.cyan, width: 2),
          borderRadius: BorderRadius.circular(16)),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    ));
  }

  ///
  /// warning to falirue case
  ///
  static warningSnackBar(BuildContext context, {String? contentMessage}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: CustomText(
        contentMessage ?? '',
      ),
      backgroundColor: AppColors.pink,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.cyan, width: 2),
          borderRadius: BorderRadius.circular(16)),
    ));
  }
}
