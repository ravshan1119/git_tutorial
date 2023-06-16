import 'package:flutter/material.dart';
import 'package:git_tutorial/ui/home/widgets/back_button.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 170),
          child: Button(onPressed: (){
            
            showModalBottomSheet(context: context, builder: (context){
              return Container(
                height: 300,
                child: Text("Hello"),
              );
            });
            
            
          },),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
