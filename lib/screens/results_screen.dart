import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';
import 'package:quiz_app/styled_widgets/styled_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSumaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StyledText('You answered X out of Y questions corretly !'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 500,
              width: 340,
              child: QuestionsSummary(getSumaryData()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
