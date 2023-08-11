import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen/gradient_container.dart';
import 'package:quiz_app/start_screen/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Gradientcontainer(
              Color.fromARGB(255, 127, 11, 189),
              Color.fromARGB(255, 4, 95, 148),
            ),
            Homepage(),
          ],
        ),
      ),
    ),
  );
}
