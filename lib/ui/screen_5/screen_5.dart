import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/ui/screen_3/screen_3.dart';
import 'package:git_tutorial/ui/screen_4/show_modal_bottom_sheet.dart';
import 'package:git_tutorial/ui/screen_5/widget/widget.dart';
import 'package:git_tutorial/utils/app_image.dart';
import 'package:git_tutorial/widgets/global_app_bar.dart';
import 'package:git_tutorial/widgets/global_control.dart';
import 'package:git_tutorial/widgets/global_search_field.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/app_colors.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_FFFFFF,
      appBar: const GlobalAppBar(),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GlobalSearchField(title: "Sweet Fruit"),
                  ZoomTapAnimation(
                    child: GlobalControl(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          clipBehavior: Clip.hardEdge,
                          backgroundColor: AppColors.C_194B38.withOpacity(0.5),
                          context: context,
                          builder: (context) {
                            return const FourthScreen();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Found 20 Results",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.C_194B38,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  ZoomTapAnimation(
                    child: GestureDetector(
                      child: SvgPicture.asset(AppImages.menuList),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const ThirdScreen();
                        }));
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
             Expanded(
                  child: GridView(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 3.2,
                        crossAxisCount: 1,
                        mainAxisSpacing: 10),
                    children: [
                      ...List.generate(
                          productsWidget.length, (index) => productsWidget[index])
                    ],
                  ),
                ),
            ],
          )),
    );
  }
}

List<WidgetStack> productsWidget = [
  WidgetStack(
    image: AppImages.mango,
    fruitName: "Mango",
    priceTitle: "\$ 1.",
    priceSubTitle: "8",
  ),
  WidgetStack(
    image: AppImages.grape,
    fruitName: "Grape",
    priceTitle: "\$ 2.",
    priceSubTitle: "1",
  ),
  WidgetStack(
    image: AppImages.strawberry,
    fruitName: "Strawberry",
    priceTitle: "\$ 2.",
    priceSubTitle: "5",
  ),
  WidgetStack(
    image: AppImages.avocado,
    fruitName: "Avocado",
    priceTitle: "\$ 1.",
    priceSubTitle: "9",
  ),
  WidgetStack(
    image: AppImages.meat,
    fruitName: "Meat",
    priceTitle: "\$ 3.",
    priceSubTitle: "1",
  ),
  WidgetStack(
    image: AppImages.sweetFruit,
    fruitName: "Sweet Fruit",
    priceTitle: "\$ 2.",
    priceSubTitle: "6",
  ),
  WidgetStack(
    image: AppImages.grape,
    fruitName: "Grape",
    priceTitle: "\$ 3.",
    priceSubTitle: "6",
  ),
  WidgetStack(
    image: AppImages.mango,
    fruitName: "Mango",
    priceTitle: "\$ 1.",
    priceSubTitle: "8",
  ),
];
