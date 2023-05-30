import "package:flutter/material.dart";

class StartButton extends StatelessWidget {
  const StartButton(this.labelText, this.onPressed, {super.key});

  final String labelText;
  final void Function() onPressed;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: () {
        onPressed();
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(
        labelText,
      ),
    );
  }
}
