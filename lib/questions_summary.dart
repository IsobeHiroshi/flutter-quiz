import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    const correctColor = Color.fromARGB(255, 242, 118, 226);
    const userColor = Color.fromARGB(255, 116, 182, 236);

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: data['user_answer'] == data['correct_answer']
                            ? correctColor
                            : userColor,
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
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
                            style: const TextStyle(
                              color: correctColor,
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                              color: userColor,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
