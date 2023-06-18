import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/modul/Item.dart';
import 'package:git_tutorial/ui/screen_3/widgets/contaner_product.dart';
import 'package:git_tutorial/ui/screen_3/widgets/contaner_product_mine.dart';
import 'package:git_tutorial/widgets/global_app_bar.dart';
import '../../modul/data_repository.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_image.dart';
import '../../widgets/global_control.dart';
import '../../widgets/global_search_field.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

double remember = 215;

class _ThirdScreenState extends State<ThirdScreen> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hidth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const GlobalAppBar(),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: GlobalSearchField(
                    title: 'Sweet fruit',
                  )),
              GlobalControl(
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                GestureDetector(
                  child: SvgPicture.asset(AppImages.menuList),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...List.generate(Repository.data.length, (index){
                        Iteam item = Repository.data[index];
                        return Column(
                          children: [
                            const SizedBox(height: 2,),
                            index==0?ProductsHet(image: item.image, name: item.nameFruit, kg: item.kg):ProductsMine(image: item.image, name: item.nameFruit, kg: item.kg)
                          ],
                        );
                      }
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ...List.generate(Repository.data.length, (index){
                        Iteam item = Repository.data[index];
                        return Column(
                          children: [
                            ProductsMine(image: item.image, name: item.nameFruit, kg: item.kg)
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
    );
  }
}