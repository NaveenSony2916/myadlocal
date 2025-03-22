import 'package:flutter/material.dart';

import '../common_color/app_color.dart';


class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color? textColor;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final double? letterSpacing;
  final double? height;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDirection? textDirection;
  final CommonTextType textType;
  String? fontFamily;

  CustomText(
      this.text, {
        super.key,
        this.style,
        this.fontFamily,
        this.textAlign,
        this.maxLines,
        this.overflow,
        this.textColor,
        this.softWrap,
        this.fontSize,
        this.letterSpacing,
        this.height,
        this.textDirection,
        this.textType = CommonTextType.body,
        this.fontWeight,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      textDirection: textDirection,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      style: _getTextStyle(context),
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    switch (textType) {
      case CommonTextType.headline:
        return textTheme.headlineLarge!.copyWith(
            letterSpacing: letterSpacing ?? 0.55,
            height: height,
            fontSize: fontSize??30,
            color: textColor ?? Colors.black,
            fontFamily: fontFamily ?? 'Poppins',
            fontWeight: fontWeight ?? FontWeight.w700);
      case CommonTextType.subtitle:
        return textTheme.titleMedium!.copyWith(
          letterSpacing: letterSpacing ?? 0.55,
          height: height,
          fontSize:fontSize?? 18.55,
          fontFamily: fontFamily ?? 'Poppins',
          fontWeight: fontWeight ?? FontWeight.w500,
          color: textColor ?? AppColors.appGrey,
        );
      case CommonTextType.body:
        return textTheme.bodyMedium!.copyWith(
          letterSpacing: letterSpacing ?? 0.55,
          height: height,
          fontSize: 18,
          color: AppColors.pink,
        );
      case CommonTextType.caption:
        return textTheme.bodySmall!
            .copyWith(letterSpacing: letterSpacing, height: height);
      case CommonTextType.button:
        return textTheme.labelLarge!.copyWith(
            letterSpacing: letterSpacing ?? 0.55,
            height: height,
            fontSize: 12,
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.bold);
      case CommonTextType.display:
        return textTheme.displayLarge!.copyWith(
          letterSpacing: letterSpacing ?? 0.55,
          height: height,
          fontSize: 18,
          fontFamily: fontFamily ?? 'Poppins',
          fontWeight: fontWeight ?? FontWeight.w500,
          color: textColor ?? AppColors.appGrey,
        );
      case CommonTextType.title:
        return textTheme.titleLarge!.copyWith(
          letterSpacing: letterSpacing ?? 0.55,
          height: height,
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        );
      case CommonTextType.overline:
        return textTheme.labelSmall!.copyWith(
          letterSpacing: letterSpacing ?? 0.55,
          height: height,
          fontSize: 10,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        );
      case CommonTextType.footnote:
        return textTheme.bodySmall!.copyWith(
          letterSpacing: letterSpacing ?? 0.4,
          height: height,
          fontSize: 12,
          color: Colors.grey[700],
        );
      case CommonTextType.menu:
        return textTheme.titleSmall!.copyWith(
          letterSpacing: letterSpacing ?? 0.5,
          height: height,
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        );
      case CommonTextType.callout:
        return textTheme.bodyMedium!.copyWith(
          letterSpacing: letterSpacing ?? 0.5,
          height: height,
          fontSize: 17,
          color: Colors.blueGrey,
          fontStyle: FontStyle.italic,
        );
      default:
        return textTheme.bodyMedium!;
    }
  }
}

enum CommonTextType {
  headline,
  subtitle,
  body,
  caption,
  button,
  display,
  title,
  overline,
  footnote,
  menu,
  callout,
}