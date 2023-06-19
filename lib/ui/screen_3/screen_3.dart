import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/modul/Item.dart';
import 'package:git_tutorial/ui/screen_3/widgets/contaner_product.dart';
import 'package:git_tutorial/ui/screen_3/widgets/contaner_product_mine.dart';
import 'package:git_tutorial/ui/screen_5/screen_5.dart';
import 'package:git_tutorial/widgets/global_app_bar.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../modul/data_repository.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_image.dart';
import '../../widgets/global_control.dart';
import '../../widgets/global_search_field.dart';
import '../screen_4/show_modal_bottom_sheet.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

double remember = 215;

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 41.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: const GlobalSearchField(
                  title: 'Sweet fruit',
                ),
              ),
              ZoomTapAnimation(
                child: GlobalControl(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      clipBehavior: Clip.hardEdge,
                      backgroundColor: AppColors.C_194B38.withOpacity(0.5),
                      context: context,
                      builder: (context) {
                        return  FourthScreen();
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
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
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const FifthScreen();
                        },
                      ),
                    );
                  },
                    child: SvgPicture.asset(AppImages.menu)),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...List.generate(Repository.data.length, (index) {
                        Iteam item = Repository.data[index];
                        return Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            index == 0
                                ? ProductsHet(
                                    image: item.image,
                                    name: item.nameFruit,
                                    kg: item.kg)
                                : ProductsMine(
                                    image: item.image,
                                    name: item.nameFruit,
                                    kg: item.kg,
                                  ),
                          ],
                        );
                      }),
                    ],
                  ),
                  Column(
                    children: [
                      ...List.generate(Repository.data.length, (index) {
                        Iteam item = Repository.data[index];
                        return Column(
                          children: [
                            ProductsMine(
                                image: item.image,
                                name: item.nameFruit,
                                kg: item.kg)
                          ],
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.C_FFFFFF,
    );
  }
}
