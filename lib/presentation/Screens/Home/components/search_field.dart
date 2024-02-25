import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/config/constants/constants.dart';
import 'package:music_app/config/theme/theme.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Text(
            'Live Your Day With Music!',
            style: TextStyle(
              color: AppColors.darkBlueColor,
              fontWeight: FontWeight.w400,
              fontSize: AppFonts.textFont19,
            ),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 50),
            prefixIconConstraints: BoxConstraints.tight(Size(35.h, 35.h)),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                search,
                color: AppColors.darkGreyColor,
              ),
            ),
            hintStyle: TextStyle(
              color: AppColors.darkGreyColor,
              fontSize: AppFonts.textFont15,
            ),
            hintText: 'Songs,Artists,Podcasts and more',
            fillColor: AppColors.greyColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: AppBorderRadius.borderRadius20,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: AppBorderRadius.borderRadius20,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: AppBorderRadius.borderRadius20,
            ),
          ),
        ),
      ],
    );
  }
}
