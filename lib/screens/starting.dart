import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen/start_screen.dart';
import 'package:quiz_app/start_screen/gradient_container.dart';

class Starting extends StatefulWidget{
  const Starting({super.key});

  @override
  State<Starting> createState(){
    return _Starting();
  }
}

class _Starting extends State<Starting> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Gradientcontainer(
              Color.fromARGB(255, 127, 11, 189),
              Color.fromARGB(255, 4, 95, 148),
            ),
            StartScreen(),
          ],
        ),
      ),
    );
  }
}