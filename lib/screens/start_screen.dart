import 'package:flutter/material.dart';
import 'package:quiz_app/styled_widgets/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 320,
            height: 320,
            color: const Color.fromARGB(173, 36, 245, 182),
          ),
          const SizedBox(
            height: 90,
          ),
          const StyledText("Learn Flutter the fun way!"),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 175,
            height: 40,
            child: OutlinedButton.icon(
              onPressed: startQuiz,
              style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 25,
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          )
        ],
      ),
    );
  }
}
