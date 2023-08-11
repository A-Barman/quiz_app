import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen/styled_text.dart';

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
            width: 320,
            height: 320,
          ),
          const SizedBox(
            height: 90,
          ),
          const StyledText("Learn Flutter the fun way!"),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 150,
            height: 40,
            child: OutlinedButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 25,
                ),
              ),
              child: const Text('Start Quiz'),
            ),
          )
        ],
      ),
    );
  }
}
