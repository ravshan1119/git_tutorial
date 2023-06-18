import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/ui/home/widgets/back_button.dart';
import 'package:git_tutorial/ui/screen_1/widget/last_seen_widget.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_image.dart';
import '../home/home_screen.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
          const SizedBox(
            height: 11,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
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
                    padding: const EdgeInsets.only(right: 18),
                    child: SvgPicture.asset(AppImages.search),
                  ),
                ),
                hintText: 'Search fresh groceries',
                hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.C_194B38, fontWeight: FontWeight.w600),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: AppColors.C_194B38.withOpacity(0.06),
                filled: true,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
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
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    GlobalImageWidget(imagePath: AppImages.mango),
                    SizedBox(width: 9,),
                    GlobalImageWidget(imagePath: AppImages.avocado),
                    SizedBox(width: 9,),
                    GlobalImageWidget(imagePath: AppImages.sweetFruit),
                    SizedBox(width: 9,),
                    GlobalImageWidget(imagePath: AppImages.strawberry),
                    SizedBox(width: 9,),
                    GlobalImageWidget(imagePath: AppImages.meat),
                    SizedBox(width: 9,),
                    GlobalImageWidget(imagePath: AppImages.grape),
                    SizedBox(width: 9,),
                    GlobalImageWidget(imagePath: AppImages.lemon),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
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
                    margin: const EdgeInsets.symmetric(horizontal: 30),
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
