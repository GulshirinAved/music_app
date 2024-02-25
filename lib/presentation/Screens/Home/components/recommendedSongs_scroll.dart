import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/config/theme/theme.dart';
import 'package:music_app/presentation/CustomWidgets/song_card.dart';

class RecommenedSongs extends StatelessWidget {
  const RecommenedSongs({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Recommended Songs',
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
