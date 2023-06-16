import 'package:flutter/material.dart';
import 'package:git_tutorial/ui/home/widgets/global_appbar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Button(onPressed: (){}),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(

        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
