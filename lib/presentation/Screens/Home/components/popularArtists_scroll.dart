import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/config/constants/constants.dart';
import 'package:music_app/config/theme/theme.dart';

class PopularArtistsScroll extends StatelessWidget {
  const PopularArtistsScroll({
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
          height: 5.h,
        ),
        Text(
          'Popular Artists',
          style: TextStyle(
            color: AppColors.darkBlueColor,
            fontSize: AppFonts.textFont19,
          ),
        ),
        SizedBox(
          height: 97.h,
          width: width,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: artistsList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 3.w,
                      right: 3.w,
                      top: 3.h,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.darkBlueColor,
                      image: DecorationImage(
                        image: AssetImage(artistsList[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 65.h,
                    width: 65.h,
                  ),
                  SizedBox(
                    width: 60.w,
                    child: Text(
                      artistsList[index].name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.darkBlueColor,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
