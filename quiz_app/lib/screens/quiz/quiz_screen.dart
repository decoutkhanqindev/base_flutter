import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz/quiz_body.dart';

class QuizScreen extends StatefulWidget {
  final VoidCallback onNavigateToQuestionsScreen;

  const QuizScreen({super.key, required this.onNavigateToQuestionsScreen});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        shadowColor: Colors.black,
        elevation: 2,
      ),
      body: QuizBody(
        onNavigateToQuestionsScreen: widget.onNavigateToQuestionsScreen,
      ),
    );
  }
}
