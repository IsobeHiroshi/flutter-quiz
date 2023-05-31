import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:adv_basics/questions_summary/summary_item.dart';
import 'package:flutter/material.dart';

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
                    QuestionIdentifier(
                      identifier: data['question_index'] as int,
                      color: data['user_answer'] == data['correct_answer']
                          ? correctColor
                          : userColor,
                    ),
                    const SizedBox(width: 20),
                    SummaryItem(
                      data: data,
                      userColor: userColor,
                      correctColor: correctColor,
                    )
                  ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
