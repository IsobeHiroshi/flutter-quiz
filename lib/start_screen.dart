import "package:adv_basics/start_button.dart";
import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          const Text(
            "Learn the Flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(255, 229, 208, 250),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          const StartButton("Start Quiz"),
        ],
      ),
    );
  }
}
