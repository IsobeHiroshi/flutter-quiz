import "package:flutter/material.dart";

class StartButton extends StatelessWidget {
  const StartButton(this.labelText, {super.key});

  final String labelText;

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: null,
      child: Text(
        labelText,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
