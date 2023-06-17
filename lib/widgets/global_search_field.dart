import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/app_image.dart';

import '../utils/app_colors.dart';

class GlobalSearchField extends StatelessWidget {
  const GlobalSearchField({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
        width: 247.w,
        height: 50.h,
        child: TextField(
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(top: 15.h, left: 15.w, bottom: 15.h),
              child: SvgPicture.asset(AppImages.search),
            ),
            hintText: title,
            hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.C_194B38,
                  fontWeight: FontWeight.w600,
                ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none, // Remove border color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none, // Remove border color
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none, // Remove border color
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none, // Remove border color
            ),
            fillColor: AppColors.C_194B38.withOpacity(0.06),
            filled: true,
          ),
        ));
  }
}
