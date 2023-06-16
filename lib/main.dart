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
      home: Column(children: [
         Text('HHH ? <*_*> {__)--->'),
        Text("Nurmuxammad Zoyidov"),
        Text("Abdulaziz"),
        Text("Tursunov"),
        Text("Sharif "), 
        Text("___RAVSHAN___",style:  TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.cyan
        ),)],),

    );
  }
}
