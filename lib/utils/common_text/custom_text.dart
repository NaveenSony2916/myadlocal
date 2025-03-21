import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final double? letterSpacing;
  final double? height;
  final TextDirection? textDirection;
  final CommonTextType textType;

  const CustomText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap,
    this.letterSpacing,
    this.height,
    this.textDirection,
    this.textType = CommonTextType.body,
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
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold);
      case CommonTextType.subtitle:
        return textTheme.titleMedium!
            .copyWith(letterSpacing: letterSpacing, height: height);
      case CommonTextType.body:
        return textTheme.bodyMedium!
            .copyWith(letterSpacing: letterSpacing, height: height);
      case CommonTextType.caption:
        return textTheme.bodySmall!
            .copyWith(letterSpacing: letterSpacing, height: height);
      case CommonTextType.button:
        return textTheme.labelLarge!
            .copyWith(fontWeight: FontWeight.bold, letterSpacing: 1.0);
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
}
