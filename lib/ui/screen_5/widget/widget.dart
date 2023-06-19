
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_tutorial/utils/app_colors.dart';
import 'package:git_tutorial/utils/app_image.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class WidgetStack extends StatefulWidget {
   WidgetStack({Key? key, required this.image, required this.fruitName, required this.priceTitle,required this.priceSubTitle, this.isIcon = false,}) : super(key: key);
  final String image;
  final String fruitName;
  final String priceTitle;
  final  String priceSubTitle;
  bool isIcon;

  @override
  State<WidgetStack> createState() => _WidgetStackState();
}

class _WidgetStackState extends State<WidgetStack> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        color: AppColors.C_1F4F3.withOpacity(0.9),
        borderRadius: BorderRadius.circular(24.r),
      ),child: Row(
      children: [
        Container(
          width: 120.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
          ),child: Image.asset(widget.image,width: 100.w,height: 100.h,),
        ),
        SizedBox(width: 12.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( widget.fruitName,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15,color: AppColors.C_194B38),),
            SizedBox(height: 5.h,),
            RichText(text: TextSpan(
               children:[
             TextSpan(text:widget.priceTitle,style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.C_4CBB5E)),
             TextSpan(text: widget.priceSubTitle,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.C_4CBB5E)),
             TextSpan(text: "/kg",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.C_9C9C9C,fontSize: 11)),]),),
          ],
        ),
            SizedBox(width: 50.w,),
       const Spacer(),
        Column(
          children: [
            SizedBox(height: 15.h,),
           widget.isIcon? Ink(
              child: InkWell(
                onTap: (){
                  setState(() {
                    widget.isIcon = !widget.isIcon;
                  });
                },
                child: Container(
                  height: 24.h,
                  width: 24.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70.r),
                    color: AppColors.C_1F4F3.withOpacity(0.9),
                    border: Border.all(color: AppColors.C_EC534A.withOpacity(0.3),width: 0.5),
                  ),child: Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: AppColors.C_EC534A,
                    borderRadius: BorderRadius.circular(20.r),
                    ),child:Padding(
          padding: const EdgeInsets.all(5.0),
          child: SvgPicture.asset(AppImages.favo1,fit: BoxFit.cover,),
        ),),),
              ),
            ):
            Ink(
              child: InkWell(onTap: (){
                setState(() {
                  widget.isIcon = !widget.isIcon;
                });
              },
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                      color: AppColors.C_1F4F3.withOpacity(0.9),
                      // border: Border.all(color: AppColors.C_EC534A,width: 1)
                  ),child: Container(
                  width: 15.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                    color: AppColors.C_FFFFFF,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(AppImages.favo),
                  ),
                ),
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            Spacer(),
            ZoomTapAnimation(child: SvgPicture.asset(AppImages.addTovar)),
          ],
        ),

      ],
    ),

    );
  }
}
