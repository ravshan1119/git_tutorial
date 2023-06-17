import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/app_colors.dart';
import 'package:git_tutorial/utils/app_image.dart';

import '../ui/home/widgets/back_button.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSize{
  const GlobalAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: AppColors.C_FFFFFF,
      elevation: 0,
      title: ListTile(
        leading:  Button(onPressed: () {},),
        title: Center(child: Text("Search Groceries",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.C_4B4B4B, fontSize:  12),)),
        trailing: SvgPicture.asset(AppImages.bag, width: width * (25/375),height:  height * (25/812),),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 56);
}

