import 'package:flutter/material.dart';



class GlobalTextField extends StatefulWidget {

  const GlobalTextField({super.key, required this.text});



  @override

  State<GlobalTextField> createState() => _GlobalTextFieldState();

  final String text;

}



class _GlobalTextFieldState extends State<GlobalTextField> {

  @override

  Widget build(BuildContext context) {

    return Column(

      children: [

        SizedBox(

          height: 40,

          width: 109,

          child: TextField(

            cursorHeight: 22,

            cursorWidth: 1,

            keyboardType: TextInputType.number,

            textInputAction: TextInputAction.done,

            style: const TextStyle(color: Colors.black),

            decoration: InputDecoration(

                hintText: widget.text,

                hintStyle: const TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Colors.grey)

            ),

          ),

        ),

      ],

    );

  }

}