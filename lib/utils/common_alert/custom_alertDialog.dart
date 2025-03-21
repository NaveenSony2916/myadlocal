import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../common_color/app_color.dart';
import '../common_text/custom_text.dart';

///
Future<bool?> confirmAlertDialog(BuildContext context,
    {GestureTapCallback? noEvent,
    GestureTapCallback? yesEvent,
    String? content}) async {
  return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: CustomText(
            "Welcome",
            textType: CommonTextType.headline,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                CustomText(
                  content ?? "Welcome",
                  textType: CommonTextType.headline,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Container(
              height: 38,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.pink,
              ),
              child: Center(
                child: InkWell(
                    onTap: noEvent ?? () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: CustomText(
                        content ?? "NO",
                        textType: CommonTextType.headline,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Container(
              height: 38,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.cyan,
              ),
              child: InkWell(
                  onTap: yesEvent ?? () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Center(
                      child: CustomText(
                        content ?? "YES",
                        textType: CommonTextType.headline,
                      ),
                    ),
                  )),
            ),
          ],
        );
      });
}

///
class CustomDialog extends StatefulWidget {
  ///
  GestureTapCallback? noEvent;

  ///
  GestureTapCallback? yesEvent;

  ///
  Widget? content;

  ///
  CustomDialog({super.key, this.content, this.noEvent, this.yesEvent});

  @override
  _CustomDialogState createState() => new _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          title: SizedBox(
            height: 200,
            child: Image.asset(
              'assets/images/group_1193.png',
            ),
          ),
          content: widget.content ?? const SizedBox(),
          actions: <Widget>[
            MaterialButton(
              color: AppColors.pink,
              textColor: Colors.white,
              onPressed: widget.yesEvent ?? () {},
              child: CustomText(
                "Submit",
                textType: CommonTextType.headline,
              ),
            ),
            MaterialButton(
              color: AppColors.cyan,
              textColor: Colors.white,
              child: CustomText(
                "Cancel",
                textType: CommonTextType.headline,
              ),
              onPressed: () {
                AutoRouter.of(context).back();
              },
            ),
          ],
          actionsAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
