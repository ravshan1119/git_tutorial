import 'package:flutter/material.dart';
import 'package:git_tutorial/ui/home/widgets/back_button.dart';
import 'package:git_tutorial/ui/screen_2/screen_2.dart';
import 'package:git_tutorial/ui/screen_5/screen_5.dart';

import '../screen_4/show_modal_bottom_sheet.dart';

class AllScreenButton extends StatefulWidget {
  const AllScreenButton({super.key});

  @override
  State<AllScreenButton> createState() => _AllScreenButtonState();
}

class _AllScreenButtonState extends State<AllScreenButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text(
          "Check Screen",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Button(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FifthScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 50,),
            Button(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  clipBehavior: Clip.hardEdge,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return  FourthScreen();
                  },
                );
              },
            ),
            SizedBox(height: 50,),
            Button(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  clipBehavior: Clip.hardEdge,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return  Screen2();
                  },
                );
              },
            ),
            SizedBox(height: 50,),
            Button(
              onPressed: () {},
            ),
            SizedBox(height: 50,),
            Button(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
