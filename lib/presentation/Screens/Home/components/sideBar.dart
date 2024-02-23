import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/config/constants/constants.dart';
import 'package:music_app/config/theme/theme.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).closeDrawer();
                  },
                  icon: const Icon(Icons.clear_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.moon_stars_fill),
                ),
              ],
            ),
          ),
          drawerTile(title: 'Liked Songs', icon: heart, onTap: () {}),
          drawerTile(title: 'Language', icon: language, onTap: () {}),
          drawerTile(title: 'Contact', icon: contact, onTap: () {}),
        ],
      ),
    );
  }

  ListTile drawerTile({VoidCallback? onTap, String? title, String? icon}) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(
        icon!,
        height: 17.h,
        color: AppColors.darkBlueColor,
      ),
      minLeadingWidth: 15,
      title: Text(
        title!,
        style: TextStyle(
          fontSize: AppFonts().textFont16,
          fontFamily: 'OpenSans-SemiBold',
        ),
      ),
    );
  }
}
