import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
                    child: GlobalControl(onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        clipBehavior: Clip.hardEdge,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return  FourthScreen();
                        },
                      );
                    },),
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
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: AppColors.C_194B38,fontSize: 20,fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    child: SvgPicture.asset(AppImages.menuList),
                    onTap: () {},
                  ),],
              ),SizedBox(height: 25,),
              WidgetStack(image: AppImages.mango, fruitName: "Mango", priceTitle: "\$ 1.", priceSubTitle: "8", iconFavorite: AppImages.select, iconAdd: AppImages.addTovar),
        // SizedBox(height: 12,),
              WidgetStack(image: AppImages.grape, fruitName: "Grape", priceTitle: "\$ 2.", priceSubTitle: "1", iconFavorite: AppImages.select, iconAdd: AppImages.addTovar),
              // SizedBox(height: 12,),
              WidgetStack(image: AppImages.strawberry, fruitName: "Strawberry", priceTitle: "\$ 2.", priceSubTitle: "5", iconFavorite: AppImages.select, iconAdd: AppImages.addTovar),
              // SizedBox(height: 12,),
              WidgetStack(image: AppImages.avocado, fruitName: "Avocado", priceTitle: "\$ 2.", priceSubTitle: "1", iconFavorite: AppImages.select, iconAdd: AppImages.addTovar),

            ],
          )),
    );
  }
}