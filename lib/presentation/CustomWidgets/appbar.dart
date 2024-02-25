import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/config/constants/constants.dart';
import 'package:music_app/config/theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0.1,
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: SvgPicture.asset(menu),
        ),
      ),
      title: Text(
        'Music',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.darkBlueColor,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
