import 'package:flutter/material.dart';
import 'package:local/utils/extention/string_extention.dart';
import '../common_text/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final Color? buttonTextColor;
  final double? height;
  final double? width;
  final GestureTapCallback? onTap;
  const CustomButton(
      {super.key,
      required this.buttonName,
      required this.buttonColor,
      this.height,
      this.width,
      this.buttonTextColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 5),
      child: InkWell(
          onTap: onTap ?? () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFFB97C9),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Center(
                  child: CustomText(
                buttonName.dataOrEmptyOrNull,
                textType: CommonTextType.headline,
              )),
            ],
          )),
    );
  }
}

class ButtonShadow extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final Color? buttonTextColor;
  final double? height;
  final double? width;
  final GestureTapCallback? onTap;
  const ButtonShadow(
      {super.key,
      required this.buttonName,
      required this.buttonColor,
      this.buttonTextColor,
      this.height,
      this.width,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFD4FFF7),
              Color(0xFFFFEEF6),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xF4C8C4C6),
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Center(
            child: CustomText(
          buttonName.dataOrEmptyOrNull,
          textType: CommonTextType.headline,
        )),
      ),
    );
  }
}
