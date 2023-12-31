import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TxtButton extends StatefulWidget {
  final String text;

  final VoidCallback onPressed;

  const TxtButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  _TxtButtonState createState() => _TxtButtonState();
}

class _TxtButtonState extends State<TxtButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });

        widget.onPressed();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? const Color(0xFFEBF4F1) : Colors.white,
          border: Border.all(
            color: isSelected ? const Color(0xFF2AAF7F) : Colors.grey,
          ),
        ),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? const Color(0xFF2AAF7F) : Colors.black,
          ),
        ),
      ),
    );
  }
}
