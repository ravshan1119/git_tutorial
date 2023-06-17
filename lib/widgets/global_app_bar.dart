import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/ui/home/home_screen.dart';
import 'package:git_tutorial/utils/app_colors.dart';
import 'package:git_tutorial/utils/app_image.dart';

import '../ui/home/widgets/back_button.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSize {
  const GlobalAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.C_FFFFFF,
      elevation: 0,
      title: ListTile(
        leading: Button(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AllScreenButton();
                },
              ),
            );
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            "Search Groceries",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.C_4B4B4B, fontSize: 12),
          ),
        ),
        trailing: SvgPicture.asset(
          AppImages.bag,
          width: 25.w,
          height: 25.h,
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
