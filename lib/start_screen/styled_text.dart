import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.outputtext, {super.key});

  final String outputtext;

  @override
  Widget build(context) {
    return Text(
      outputtext,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 26.0,
      ),
    );
  }
}