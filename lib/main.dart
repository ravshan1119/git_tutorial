import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:git_tutorial/ui/screen_2/screen_2.dart';
import 'package:git_tutorial/ui/screen_5/screen_5.dart';

import 'package:git_tutorial/ui/home/home_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: AllScreenButton(),
          );
        });
  }
}
