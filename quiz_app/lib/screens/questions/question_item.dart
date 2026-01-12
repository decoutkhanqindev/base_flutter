import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/screens/questions/question_answer_item.dart';

class QuestionItem extends StatelessWidget {
  final Question item;
  final Function(int index) onAnswerClick;

  const QuestionItem({
    super.key,
    required this.item,
    required this.onAnswerClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        // spread operator used to expand the list of widgets
        ...item.getShuffledAnswers().map(
          (answer) => QuestionAnswerItem(
            text: answer,
            onClick: () => onAnswerClick(item.getShuffledAnswers().indexOf(answer)),
          ),
        ),
      ],
    );
  }
}
