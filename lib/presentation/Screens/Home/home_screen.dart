import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:music_app/presentation/CustomWidgets/appbar.dart';
import 'package:music_app/presentation/Screens/Home/components/category_scroll.dart';
import 'package:music_app/presentation/Screens/Home/components/popularArtists_scroll.dart';
import 'package:music_app/presentation/Screens/Home/components/popularSong_scroll.dart';
import 'package:music_app/presentation/Screens/Home/components/recommendedSongs_scroll.dart';
import 'package:music_app/presentation/Screens/Home/components/search_field.dart';
import 'package:music_app/presentation/CustomWidgets/side_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const SideBar(),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SearchTextField(),
            CategoryScroll(width: width),
            PopularArtistsScroll(width: width),
            PopularSongs(width: width),
            RecommenedSongs(width: width),
          ],
        ),
      ),
    );
  }
}
