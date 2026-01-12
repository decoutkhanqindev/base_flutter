import 'package:flutter/material.dart';

class QuestionAnswerItem extends StatelessWidget {
  final String text;
  final VoidCallback onClick;

  const QuestionAnswerItem({
    super.key,
    required this.text,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 2,
        ),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
