import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:git_tutorial/modul/Item.dart';
import 'package:git_tutorial/widgets/global_app_bar.dart';
import '../../modul/data_repository.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_image.dart';
import '../../widgets/global_control.dart';
import '../../widgets/global_search_field.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

double remember = 215;

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView(
                scrollDirection: Axis.vertical,
                padding:  EdgeInsets.all(20),
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 21,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    mainAxisExtent: 260
                ),
                children: [
                  ...List.generate(Repository.data.length, (index) {
                    Iteam item = Repository.data[index];
                    if(index%2==0){
                      remember = 340;
                    }else{
                      remember = 300;
                    }
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: AppColors.C_E2E2E2
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(item.image),
                                Text(item.nameFruit),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(item.kg,style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 20
                                    ),),
                                    Text('/kg',style: TextStyle(
                                        color: AppColors.C_4B4B4B,
                                        fontSize: 12
                                    ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 41,
                            width: 53,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(28))
                            ),
                            child: const Icon(Icons.ac_unit),
                          ),
                        ],
                      ),
                    );
                  })
                ]),
          )
        ],
      ),
    );
  }
}