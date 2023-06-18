import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/app_colors.dart';

class GlobalImageWidget extends StatefulWidget {
  final String imagePath;

  const GlobalImageWidget({Key? key, required this.imagePath}) : super(key: key);

  @override
  _GlobalImageWidgetState createState() => _GlobalImageWidgetState();
}

class _GlobalImageWidgetState extends State<GlobalImageWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Row(
        children: [
          ZoomTapAnimation(
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: isTapped ? AppColors.C_194B38.withOpacity(0.3) : AppColors.C_194B38.withOpacity(0.06),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(widget.imagePath),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
