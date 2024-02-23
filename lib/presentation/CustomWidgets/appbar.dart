import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/config/constants/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: SvgPicture.asset(menu),
        ),
      ),
      title: const Text(
        'Music',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
