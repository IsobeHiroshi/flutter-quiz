import "package:adv_basics/start_button.dart";
import "package:flutter/material.dart";

class MainContainer extends StatelessWidget {
  const MainContainer(this.color, {super.key});

  final Color color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(height: 50),
            const Text(
              "Learn the Flutter the fun way!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            const StartButton("Start Quiz"),
          ],
        ),
      ),
    );
  }
}
