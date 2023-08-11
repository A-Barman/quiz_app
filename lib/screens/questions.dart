import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  @override
  Widget build(constext) {
    return const MaterialApp(
      home: Scaffold(
        body: Text('Questions'),
      ),
    );
  }
}
