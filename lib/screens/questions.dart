import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(constext) {
    final currentQuestion = questions [0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Color.fromARGB(255, 255, 231, 150)),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            currentQuestion.anwsers[0],
            () {},
          ),
          AnswerButton(
            currentQuestion.anwsers[1],
            () {},
          ),
          AnswerButton(
            currentQuestion.anwsers[2],
            () {},
          ),
          AnswerButton(
            currentQuestion.anwsers[3],
            () {},
          ),
        ],
      ),
    );
  }
}
