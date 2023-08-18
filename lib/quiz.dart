import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/styled_widgets/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  late Widget activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          chosenAnswer: selectedAnswers,
        );
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
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
