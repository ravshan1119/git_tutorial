import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:git_tutorial/ui/home/widgets/back_button.dart';
import 'package:git_tutorial/ui/screen_1/screen_1.dart';
import 'package:git_tutorial/ui/screen_2/screen_2.dart';
import 'package:git_tutorial/ui/screen_5/screen_5.dart';

import '../../utils/app_colors.dart';
import '../screen_3/screen_3.dart';
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
        backgroundColor: Colors.blueGrey,
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 115.w),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Row(
                    children: [
                      Button(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const FirstScreen();
                              },
                            ),
                          );
                        },
                      ),
                      const Text(
                        "  Screen 1",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Button(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SecondScreen();
                              },
                            ),
                          );
                        },
                      ),
                      const Text(
                        "  Screen 2",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Button(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return Screen3();
                          }));
                        },
                      ),
                      const Text(
                        "  Screen 3",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Button(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            clipBehavior: Clip.hardEdge,
                            backgroundColor:
                                AppColors.C_194B38.withOpacity(0.5),
                            context: context,
                            builder: (context) {
                              return const FourthScreen();
                            },
                          );
                        },
                      ),
                      const Text(
                        "  Screen 4",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Button(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const FifthScreen();
                          }));
                        },
                      ),
                      const Text(
                        "  Screen 5",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
