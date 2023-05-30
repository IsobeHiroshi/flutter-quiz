import "package:adv_basics/start_button.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(153, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
            "Learn the Flutter the fun way!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 186, 158, 242),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          StartButton("Start Quiz", startQuiz),
        ],
      ),
    );
  }
}
