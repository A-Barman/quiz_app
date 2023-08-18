import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.outputtext, {super.key});

  final String outputtext;

  @override
  Widget build(context) {
    return Text(
      outputtext,
      style: GoogleFonts.aclonica(
        color: const Color.fromARGB(255, 255, 255, 255),
        fontSize: 26.0,
      ),
    );
  }
}