import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    this.onTap,
    required this.icon,
    this.color,
    this.size,
    this.weight,
    this.padding,
  });

  final Function? onTap;
  final IconData icon;
  final Color? color;
  final double? size;
  final double? weight;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    if (onTap != null) {
      return InkResponse(
          radius: 15,
          onTap: () {
            onTap?.call();
          },
          child: Container(
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            child: Icon(
              icon,
              color: color,
              size: size,
              weight: weight,
            ),
          ));
    } else {
      return Container(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        child: Icon(
          icon,
          color: color,
          size: size,
          weight: weight,
        ),
      );
    }
  }
}
