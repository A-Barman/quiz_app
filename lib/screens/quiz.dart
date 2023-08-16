import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions.dart';
import 'package:quiz_app/start_screen/start_screen.dart';
import 'package:quiz_app/background/gradient_container.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
late Widget activeScreen;


@override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

void switchScreen() {
  setState(() {
    activeScreen = const Questions();
  });
}

  @override
  Widget build(context) {
    return  MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            const Gradientcontainer(
              Color.fromARGB(255, 127, 11, 189),
              Color.fromARGB(255, 4, 95, 148),
            ),
            activeScreen,
          ],
        ),
      ),
    );
  }
}