import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/ui/home/widgets/back_button.dart';
import 'package:git_tutorial/ui/screen_1/widget/last_seen_widget.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_image.dart';
import '../home/home_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.C_FFFFFF,
        elevation: 0,
        title: ListTile(
          leading: Button(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AllScreenButton();
                  },
                ),
              );
            },
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 11.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            child: TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(
                    top: 17.h,
                    left: 47.w,
                    bottom: 17.h,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 18.w),
                    child: SvgPicture.asset(AppImages.search),
                  ),
                ),
                hintText: 'Search fresh groceries',
                hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.C_194B38, fontWeight: FontWeight.w600),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide.none,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  borderSide: BorderSide.none,
                ),
                fillColor: AppColors.C_194B38.withOpacity(0.06),
                filled: true,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Last Seen",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          fontFamily: "Raleway",
                          color: AppColors.C_194B38),
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                    ),
                    GlobalImageWidget(imagePath: AppImages.mango),
                    SizedBox(
                      width: 9.w,
                    ),
                    GlobalImageWidget(imagePath: AppImages.avocado),
                    SizedBox(
                      width: 9.w,
                    ),
                    GlobalImageWidget(imagePath: AppImages.sweetFruit),
                    SizedBox(
                      width: 9.w,
                    ),
                    GlobalImageWidget(imagePath: AppImages.strawberry),
                    SizedBox(
                      width: 9.w,
                    ),
                    GlobalImageWidget(imagePath: AppImages.meat),
                    SizedBox(
                      width: 9.w,
                    ),
                    GlobalImageWidget(imagePath: AppImages.grape),
                    SizedBox(
                      width: 9.w,
                    ),
                    GlobalImageWidget(imagePath: AppImages.lemon),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Title",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            fontFamily: "Raleway",
                            color: AppColors.C_194B38),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      "remove",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontFamily: "Raleway",
                          color: AppColors.C_EC534A),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
