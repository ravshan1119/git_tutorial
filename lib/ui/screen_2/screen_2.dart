import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/app_colors.dart';
import 'package:git_tutorial/utils/app_image.dart';
import 'package:git_tutorial/widgets/global_app_bar.dart';
import 'package:git_tutorial/widgets/global_control.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../widgets/global_products.dart';
import '../../widgets/global_search_field.dart';
import '../screen_4/show_modal_bottom_sheet.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Column(
              children: [
                const SizedBox(height: 40,),
                Row(
                  children: [
                    const GlobalSearchField(
                      title: "Rotten Fruit",
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    ZoomTapAnimation(
                      child: GlobalControl(onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          clipBehavior: Clip.hardEdge,
                          backgroundColor: AppColors.C_194B38.withOpacity(0.5),
                          context: context,
                          builder: (context) {
                            return  FourthScreen();
                          },
                        );
                      }),
                    ),
                  ],
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
                        child: Center(
                            child: Padding(
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
                  height: 70.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.C_194B38,
                          fontFamily: "Raleway"),
                    ),
                    ZoomTapAnimation(child: SvgPicture.asset(AppImages.menu)),
                  ],
                ),
                SizedBox(
                  height: 280.h,
                  width: double.infinity - 60,
                  child: GridView(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.80, crossAxisCount: 2),
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
      backgroundColor: AppColors.C_FFFFFF,
    );
  }
}

List<Products> products = [
  Products(image: AppImages.mango, name: "Mango", kg: "1.9"),
  Products(image: AppImages.lemon, name: "Lemon", kg: "2.0"),
  Products(image: AppImages.sweetFruit, name: "Fruit", kg: "3.4"),
  Products(image: AppImages.strawberry, name: "strawverry", kg: "6.3"),
];
