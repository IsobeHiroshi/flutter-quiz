import "package:flutter/material.dart";

class StartButton extends StatelessWidget {
  const StartButton(this.labelText, {super.key});

  final String labelText;

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      child: Text(
        labelText,
      ),
    );
  }
}
