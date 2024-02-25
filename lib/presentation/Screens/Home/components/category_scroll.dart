import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/config/constants/constants.dart';
import 'package:music_app/config/theme/theme.dart';

class CategoryScroll extends StatelessWidget {
  const CategoryScroll({
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
          'Category',
          style: TextStyle(
            color: AppColors.darkBlueColor,
            fontSize: AppFonts.textFont19,
          ),
        ),
        SizedBox(
          height: 100.h,
          width: width,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: categoryList.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 75.h,
                    width: 75.h,
                    margin: EdgeInsets.only(
                      left: 3.w,
                      right: 3.w,
                      top: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.darkBlueColor,
                      borderRadius: AppBorderRadius.borderRadius18,
                      image: DecorationImage(
                        image: AssetImage(
                          categoryList[index].image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60.w,
                    child: Text(
                      categoryList[index].title,
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
