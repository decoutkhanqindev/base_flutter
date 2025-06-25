import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Widget2()));
}

// A stateless widget never changes.
class Widget1 extends StatelessWidget {
  final bool _isChecked;

  const Widget1(this._isChecked, {super.key});

  @override
  Widget build(BuildContext context) {
    return _isChecked ? const Text("ON") : const Text("OFF");
  }
}

// A stateful widget is dynamic: for example, it can change its appearance in
// response to events triggered by user interactions or when it receives data.
class Widget2 extends StatefulWidget {
  const Widget2({super.key});

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = false;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: isChecked ? const Text("ON") : const Text("OFF"),
    );
  }
}
