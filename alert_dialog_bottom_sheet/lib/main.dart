import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SafeArea(child: Content())));
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ButtonToShow(
              text: "Show AlertDialog",
              onPressed: () {
                myShowAlertDialog(context);
              },
            ),
            ButtonToShow(
              text: "Show BottomSheet",
              onPressed: () {
                myShowBottomSheet(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void myShowAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Title"),
        content: Text("Content"),
        actions: [
          ActionButton(text: "Cancel", onPressed: () {}),
          ActionButton(text: "OK", onPressed: () {}),
        ],
      ),
    );
  }

  void myShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) =>
          Container(alignment: Alignment.center, child: Text("Content")),
    );
  }
}

class ButtonToShow extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ButtonToShow({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ActionButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(text));
  }
}
