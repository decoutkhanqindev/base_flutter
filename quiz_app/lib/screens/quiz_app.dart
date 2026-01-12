import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions/questions_screen.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = QuizScreen(onNavigateToQuestionsScreen: _switchScreen);
    super.initState();
  }

  void _switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: activeScreen);
  }
}
