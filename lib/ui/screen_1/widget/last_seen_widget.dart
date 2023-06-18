import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';


class GlobalImageWidget extends StatelessWidget {
  final String imagePath;

  const GlobalImageWidget({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColors.C_194B38.withOpacity(0.06),
              ),
              child: Stack(
                children: [
                  Image.asset(imagePath),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
