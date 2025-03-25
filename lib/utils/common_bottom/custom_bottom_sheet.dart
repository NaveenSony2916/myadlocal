import 'package:flutter/material.dart';
import '../common_color/app_color.dart';
import '../common_text/custom_text.dart';
import '../common_textfield/common_textfield.dart';

///
Future<void> bottomSheet(
  BuildContext context, {
  Widget? content,
  Color? backGroundColor,
  int? index,
  RoundedRectangleBorder? shape,
  bool? isScrollControlled,
}) async {
  showModalBottomSheet<void>(
    useSafeArea: true,
    useRootNavigator: true,
    context: context,

    isScrollControlled: true,

    //  isDismissible: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(50.0),
        topLeft: Radius.circular(50.0),
      ),
    ),
    backgroundColor: backGroundColor ?? Colors.grey,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom:
              MediaQuery.of(
                context,
              ).viewInsets.bottom, // Push content above keyboard
        ),
        child: SingleChildScrollView(
          child: Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                /*    Image.asset(
                  'assets/images/Group 42.png',
                  fit: BoxFit.contain,
                  height: 60,
                  color: Colors.white,
                ),*/
                SizedBox(height: 50),
                CommonTextField(
                  title: 'Old Password',
                  //   headTitle: 'Old Password',
                  hintText: 'Old Password',
                  fillColor: AppColors.white,
                  //    maxLines: 1,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    // Adjust padding as needed
                    child: Icon(Icons.password),
                  ),
                  filled: true,
                  //controller: vm.passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the password";
                    }
                    return null;
                  },
                ),
                CommonTextField(
                  title: 'New Password',
                  //  headTitle: 'New Password',
                  hintText: 'New Password',
                  fillColor: AppColors.white,
                  //  maxLines: 1,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    // Adjust padding as needed
                    child: Icon(Icons.password),
                  ),
                  filled: true,
                  //controller: vm.passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the password";
                    }
                    return null;
                  },
                ),
                CommonTextField(
                  title: 'Confirm Password',
                  //  headTitle: 'Confirm Password',
                  hintText: 'Confirm Password',
                  fillColor: AppColors.white,
                  // maxLines: 1,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    // Adjust padding as needed
                    child: Icon(Icons.password),
                  ),
                  filled: true,
                  //controller: vm.passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the password";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 130,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
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

///
Future<bool?> bottomSheetTwo(
  BuildContext context, {
  Widget? contentTitle,
  Widget? description,
  Color? backGroundColor,
  int? index,
  bool? isScrollControlled,
}) async {
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
