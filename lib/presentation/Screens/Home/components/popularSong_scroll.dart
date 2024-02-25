import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/config/theme/theme.dart';
import 'package:music_app/presentation/CustomWidgets/song_card.dart';

class PopularSongs extends StatelessWidget {
  const PopularSongs({
    required this.width,
    super.key,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5.h,
        ),
        Text(
          'Popular Songs',
          style: TextStyle(
            color: AppColors.darkBlueColor,
            fontSize: AppFonts.textFont19,
          ),
        ),
        SizedBox(
          height: 200.h,
          width: width,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SongCard(
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
