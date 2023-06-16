import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Column(children: [
        Text("___RAVSHAN___",style:  TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.cyan
        ),)
      ],),
    );
  }
}
