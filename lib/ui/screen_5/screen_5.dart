import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/utils/app_image.dart';
import 'package:git_tutorial/widgets/global_app_bar.dart';
import 'package:git_tutorial/widgets/global_search_field.dart';

import '../../utils/app_colors.dart';

class SearchResultHorizontal extends StatefulWidget {
  const SearchResultHorizontal({Key? key}) : super(key: key);

  @override
  State<SearchResultHorizontal> createState() => _SearchResultHorizontalState();
}

class _SearchResultHorizontalState extends State<SearchResultHorizontal> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_FFFFFF,
      appBar: GlobalAppBar(),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 34),
          child: Column(
            children: [
              SizedBox(
                height: height * (40 / 812),
              ),
              Row(
                children: [
                  GlobalSearchField(title: "Search Groceries"),
                  // SizedBox(width: width * (25/375),),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Container(
                        width: width * (50 / 375),
                        height: height * (50 / 812),
                        decoration: BoxDecoration(
                          color: AppColors.C_E5E5E5,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.C_E5E5E5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: SvgPicture.asset(AppImages.filtr),
                          onPressed: () {},
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: height * (25 / 812),
              ),
              Row(
                children: [
                  Text(
                    "Found 20 Results",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: AppColors.C_194B38),
                  ),
                  SizedBox(
                    width: width * (132 / 375),
                  ),
                  GestureDetector(
                    child: SvgPicture.asset(AppImages.menuList),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: height * (25 / 812),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, childAspectRatio: 3),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.C_F1F4F3,
                          borderRadius: BorderRadius.circular(23)),
                      child: Stack(children: [
                        Row(children: [
                          Image.asset(
                            AppImages.mango,
                            width: 80,
                            height: 80,
                          ),
                          Column(
                            children: [
SizedBox(height: 20,),
                                 Text(
                                   "Mango",
                                   style: Theme.of(context)
                                       .textTheme
                                       .titleLarge!
                                       .copyWith(
                                           color: AppColors.C_194B38, fontSize: 15),
                                 ),SizedBox(height: 10,),
                                 RichText(
                                   text: TextSpan(
                                       text: '\$ 1.',
                                       style: Theme.of(context)
                                           .textTheme
                                           .headlineSmall!
                                           .copyWith(color: AppColors.C_194B38),
                                       children: [
                                         TextSpan(
                                           text: "8",
                                           style: Theme.of(context)
                                               .textTheme
                                               .titleSmall!
                                               .copyWith(
                                                   color: AppColors.C_194B38,
                                                   fontSize: 19),
                                         ),
                                         TextSpan(
                                           text: '/kg',
                                           style: Theme.of(context)
                                               .textTheme
                                               .bodySmall!
                                               .copyWith(
                                                   color: AppColors.C_9C9C9C,
                                                   fontSize: 13),
                                         ),
                                       ]),
                                 )

                            ],
                          )
                        ]),
                      ]),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

//

//
// SizedBox(
// width: width * (20 / 375),
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
//
// SizedBox(
// height: 10,
// ),
//
//
// ],
// ), Spacer(),
// Column(
// children: [
// Image.asset(AppImages.select,width: width * (90/375),height: height * (90/812),),
// ],),
//
// Spacer(),
// Column(
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
//
// SvgPicture.asset(AppImages.addTovar),
// ],)
//
// ],
// ),]
