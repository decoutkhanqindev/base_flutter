import 'package:flutter/material.dart';

class QuizBody extends StatelessWidget {
  final VoidCallback onNavigateToQuestionsScreen;

  const QuizBody({super.key, required this.onNavigateToQuestionsScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.lightBlueAccent, Colors.deepPurpleAccent],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 200, height: 300),
          const SizedBox(height: 16),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          OutlinedButton.icon(
            onPressed: onNavigateToQuestionsScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white, width: 2),
              backgroundColor: Colors.transparent,
            ),
            label: const Text("Start Quiz"),
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
