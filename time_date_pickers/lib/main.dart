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
              text: "Show TimePicker",
              onPressed: () {
                myShowTimePicker(context);
              },
            ),
            ButtonToShow(
              text: "Show DatePicker",
              onPressed: () {
                myShowDatePicker(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> myShowTimePicker(BuildContext context) async {
    TimeOfDay currentTime = TimeOfDay.now();

    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: currentTime
    );

    print("timePicker: $selectedTime");
  }

  Future<void> myShowDatePicker(BuildContext context) async {
    DateTime currentTime = DateTime.now();

    DateTime? selectedDate = await showDatePicker(
      context: context,
      firstDate: currentTime,
      lastDate: currentTime.add(Duration(days: 365)),
    );

    print("datePicker: $selectedDate");
  }
}

class ButtonToShow extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonToShow({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(elevation: 4),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
