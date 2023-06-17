import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_tutorial/ui/screen_4/widgets/textField.dart';
import 'package:git_tutorial/ui/screen_4/widgets/text_btn.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Stack(
        children: [
          Positioned(
            bottom: 450.h,
            left: 151.w,
            child: Container(
              height: 4.h,
              width: 74.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: -30.h,
            left: -240.w,
            right: -240.w,
            child: ClipOval(
              child: Container(
                width: 800.w,
                height: 450.h,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 26.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sort By",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF194B38),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Wrap(
                    runSpacing: 8.w,
                    spacing: 8.w,
                    children: [
                      TxtButton(
                        text: "Popular",
                        onPressed: () {},
                      ),
                      TxtButton(
                        text: "Newest",
                        onPressed: () {},
                      ),
                      TxtButton(
                        text: "Lowest Price",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  TxtButton(
                    text: "Highest Price",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    "Free Shipping",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF194B38),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Wrap(
                    runSpacing: 8.w,
                    spacing: 8.w,
                    children: [
                      TxtButton(
                        text: "Regular",
                        onPressed: () {},
                      ),
                      TxtButton(
                        text: "Free Shipping",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    "Price",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF194B38),
                    ),
                  ),
                  Row(
                    children: [
                      const GlobalTextField(text: "Lowest"),
                      SizedBox(
                        width: 26.w,
                      ),
                      const GlobalTextField(text: "Highest"),
                    ],
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  ZoomTapAnimation(
                    child: Container(
                      height: 50,
                      width: 314.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF32CB4B),
                            Color(0xFF32CB4B),
                            Color(0xFF26AD71),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Apply",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
