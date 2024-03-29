import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStartQuiz, {super.key});

  final void Function() onStartQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(160, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.plusJakartaSans(
            color: const Color.fromARGB(255, 201, 226, 247),
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: onStartQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
          ),
          label: const Text(
            "Start Quiz",
          ),
        ),
      ]),
    );
  }
}
