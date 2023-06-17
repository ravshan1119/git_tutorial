import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/utils/app_colors.dart';
import 'package:git_tutorial/utils/app_image.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        height: 250.h,
        width: 150.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28), color: AppColors.C_F1F4F3),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 120.h,
                  width: 150.w,
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          height: 120.h,
                          width: 140.h,
                          child: Image.asset(
                            AppImages.mango,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 17, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mango",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.C_194B38,
                            fontFamily: "Raleway"),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: const Text(
                        "\$ 1.9",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.C_4CBB5E,
                            fontFamily: "Raleway"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
                top: 17,
                right: 17,
                child: SvgPicture.asset(AppImages.noFavorite)),
            Positioned(
                bottom: 0,
                right: 0,
                child: ZoomTapAnimation(
                    child: SvgPicture.asset(AppImages.addTovar))),
            Positioned(
              bottom: 6,
              left: 45.w,
              child: const Text(
                "/kg",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: AppColors.C_777777,
                    fontFamily: "Raleway"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}