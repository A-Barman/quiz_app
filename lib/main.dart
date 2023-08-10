import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Gradientcontainer(
          Color.fromARGB(255, 127, 11, 189),
          Color.fromARGB(255, 4, 95, 148),
        ),
      ),
    ),
  );
}
