import 'package:flutter/material.dart';
import 'package:local/utils/extention/string_extention.dart';

import '../common_color/app_color.dart';
import '../common_icon/app_icon.dart';
import '../common_text/custom_text.dart';

class CommonSliverAppBar extends StatelessWidget {
  final String appBarName;
  const CommonSliverAppBar({
    super.key,
    required this.appBarName,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: CommonAppbar(
        appBarName: appBarName,
      ),
      pinned: true,
      forceMaterialTransparency: true,
      toolbarHeight: 82,
      floating: true,
    );
  }
}

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarName;
  const CommonAppbar({super.key, required this.appBarName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.appBlue,
        centerTitle: true,
        leading: AppIcon(
          icon: Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: CustomText(
          appBarName.dataOrEmptyOrNull,

          textType: CommonTextType.subtitle,
          textColor: AppColors.white,
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
