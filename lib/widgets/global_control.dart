import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/utils/app_colors.dart';
import '../utils/app_image.dart';

class GlobalControl extends StatelessWidget {
  const GlobalControl({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.C_194B38.withOpacity(0.06),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 13.h),
          child: SvgPicture.asset(AppImages.filtr),
        ),
      ),
    );
  }
}
