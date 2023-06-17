import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/app_colors.dart';
import 'package:git_tutorial/utils/app_image.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../widgets/global_products.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 41.h, bottom: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ZoomTapAnimation(
                      child: Container(
                        height: 40.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: AppColors.C_777777)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 21, vertical: 11),
                          child: SvgPicture.asset(AppImages.arrow),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Text(
                      "Search Groceries",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.C_4B4B4B,
                      ),
                    ),
                    ZoomTapAnimation(child: SvgPicture.asset(AppImages.bag)),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
                child: Row(
                  children: [],
                ),
              ),
              SizedBox(
                height: 98.h,
              ),
              SizedBox(
                height: 150.h,
                width: 192.w,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.C_EBF4F1,
                          borderRadius: BorderRadius.circular(23)),
                      height: 70.h,
                      width: 70.h,
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(AppImages.smilePNG),
                      )),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    const Text(
                      "Item not Found",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: AppColors.C_194B38,
                          fontFamily: "Raleway"),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    const Text(
                      "Try search with a different keyword",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.C_9C9C9C,
                          fontFamily: "Raleway"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.C_194B38,
                        fontFamily: "Raleway"),
                  ),
                  ZoomTapAnimation(child: SvgPicture.asset(AppImages.menu)),
                ],
              ),
              SizedBox(
                height: 200.h,
                width: double.infinity - 60,
                child: GridView(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.80,
                      crossAxisCount: 2),
                  children: [
                    ...List.generate(
                        products.length, (index) => products[index])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Products> products = [
  Products(image: AppImages.mango, name: "Mango", kg: "1.9"),
  Products(image: AppImages.lemon, name: "Lemon", kg: "2.0"),
  Products(image: AppImages.sweetFruit, name: "Fruit", kg: "3.4"),
  Products(image: AppImages.strawberry, name: "strawverry", kg: "6.3"),
];
