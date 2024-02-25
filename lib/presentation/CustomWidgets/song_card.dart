import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/config/constants/constants.dart';
import 'package:music_app/config/theme/theme.dart';

class SongCard extends StatelessWidget {
  final int index;
  const SongCard({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.h,
          width: 170.w,
          margin: EdgeInsets.symmetric(
            horizontal: 3.w,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: AppColors.greyColor,
            image: DecorationImage(
              image: AssetImage(
                categoryList[index].image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: 170.w,
                height: 0.5,
                margin: EdgeInsets.symmetric(
                  horizontal: 3.w,
                ),
                color: AppColors.blackColor,
              ),
              Container(
                color: AppColors.black54Color,
                width: 170.w,
                margin: EdgeInsets.symmetric(
                  horizontal: 3.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7.w, bottom: 5.h),
                      child: Column(
                        children: [
                          Text(
                            'Silent',
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: AppFonts.textFont16,
                            ),
                          ),
                          Text(
                            'Mark',
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: AppFonts.textFont16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton.filledTonal(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              AppColors.greenColor,
                            ),
                          ),
                          icon: Icon(
                            Icons.play_arrow,
                            color: AppColors.darkBlueColor,
                          ),
                        ),
                        IconButton.filledTonal(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              AppColors.greenColor,
                            ),
                          ),
                          icon: Icon(
                            Icons.favorite,
                            size: 20.w,
                            color: AppColors.darkBlueColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
