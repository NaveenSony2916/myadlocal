import 'package:flutter/material.dart';
import 'package:local/utils/common_color/app_color.dart';

class CustomCheckbox extends StatelessWidget {
  final bool isChecked;
  final VoidCallback onChanged;

  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.appLightGrey, width: 2),
          borderRadius: BorderRadius.circular(4),
        ),
        child:
            isChecked
                ? Icon(Icons.check, color: AppColors.appLightGrey, size: 18)
                : null,
      ),
    );
  }
}
