import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/app_image.dart';

import '../utils/app_colors.dart';

class GlobalSearchField extends StatelessWidget {
  const GlobalSearchField({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
width:  width * (230/375),
      height: height * (50/812),
      child: TextField(
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
      prefixIcon: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
        child: SvgPicture.asset(AppImages.search),
      ),
      hintText: title,
      hintStyle: Theme.of(context)
          .textTheme
          .labelMedium!
          .copyWith(color: AppColors.C_4B4B4B, fontWeight: FontWeight.w600),

      focusedBorder: OutlineInputBorder(

        borderRadius: BorderRadius.circular(20.0),
      ),
      border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedErrorBorder: OutlineInputBorder(

        borderRadius: BorderRadius.circular(30.0),
      ),fillColor: AppColors.C_E5E5E5,
          filled: true,
        ),
      ),
    );
  }
}
