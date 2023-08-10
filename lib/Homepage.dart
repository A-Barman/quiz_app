import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 40,
          ),
          const StyledText("Learn Flutter the fun way!"),
          const SizedBox(
            height: 30,
          ),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 44, 103, 229),
              textStyle: const TextStyle(
                fontSize: 25,
              ),
            ),
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
