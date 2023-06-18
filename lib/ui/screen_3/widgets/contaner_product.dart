import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/utils/app_colors.dart';
import 'package:git_tutorial/utils/app_image.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProductsHet extends StatefulWidget {
  ProductsHet({Key? key, required this.image, required this.name, required this.kg}) : super(key: key);
  bool check = true;

  final String image;
  final String name;
  final String kg;

  @override
  State<ProductsHet> createState() => _ProductsState();
}

class _ProductsState extends State<ProductsHet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        height: 180.h,
        width: 130.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28), color: AppColors.C_F1F4F3),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100.h,
                  width: 150.w,
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          height: 120.h,
                          width: 140.h,
                          child: Image.asset(
                            widget.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.C_194B38,
                            fontFamily: "Raleway"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 15,
              right: 15,
              child: ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    widget.check = !widget.check;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color:
                    widget.check ? AppColors.C_EC534A : AppColors.C_E2E2E2,
                  ),
                  height: 25,
                  width: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: SvgPicture.asset(AppImages.heart)),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: ZoomTapAnimation(
                    child: SvgPicture.asset(AppImages.addTovar))),
            Positioned(
              bottom: 6,
              left: 50.w,
              child: const Text(
                "/kg",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: AppColors.C_777777,
                    fontFamily: "Raleway"),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 20,
              child:  Text(
                "\$ ${widget.kg}",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.C_4CBB5E,
                    fontFamily: "Raleway"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
