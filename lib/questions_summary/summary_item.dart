import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.data,
    required this.userColor,
    required this.correctColor,
  });

  final Map<String, Object> data;
  final Color userColor;
  final Color correctColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data['question'] as String,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            data['user_answer'] as String,
            style: TextStyle(
              color: correctColor,
            ),
          ),
          Text(
            data['correct_answer'] as String,
            style: TextStyle(
              color: userColor,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
