
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/app_colors.dart';

class WidgetStack extends StatelessWidget {
   WidgetStack({Key? key, required this.image, required this.fruitName, required this.priceTitle,required this.priceSubTitle, required this.iconFavorite, required this.iconAdd,this.isIcon = false}) : super(key: key);
  final String image;
  final String fruitName;
  final String priceTitle;
  final  String priceSubTitle;
  final String iconFavorite;
  final String  iconAdd;
  bool isIcon;
  


  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3.1
      ),children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.C_1F4F3.withOpacity(0.9),
            borderRadius: BorderRadius.circular(24),
          ),child: Row(
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),child: Image.asset(image,width: 100,height: 100,),
            ),
         const   SizedBox(width: 12,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( fruitName,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15,color: AppColors.C_194B38),),
           const     SizedBox(height: 5,),
                RichText(text: TextSpan(
                   children:[
                 TextSpan(text:priceTitle,style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.C_4CBB5E)),
                 TextSpan(text: priceSubTitle,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.C_4CBB5E)),
                 TextSpan(text: "/kg",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.C_9C9C9C,fontSize: 11)),]),),
              ],
            ),
               Align(child:  Image.asset(iconFavorite,width: -50,height: -50),alignment: Alignment.topLeft,),
          const  Spacer(),
               Align(child: GestureDetector(child: SvgPicture.asset(iconAdd,width: 40,height: 40,),onTap: (){},),alignment: Alignment.bottomRight,)
          ],
        ),

        )
      ],
      ),
    );
  }
}
