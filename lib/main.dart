import 'package:flutter/material.dart';
import 'package:git_tutorial/ui/home/home_screen.dart';
import 'package:git_tutorial/ui/screen_4/screen_4.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
