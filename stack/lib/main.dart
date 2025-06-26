import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(child: Scaffold(body: Body())),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.none, // element will draw out of parent
      alignment: Alignment.center,
      // textDirection: TextDirection.ltr,
      children: [
        Container(width: 300, height: 1000, color: Colors.red),
        Container(width: 200, height: 200, color: Colors.blue),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(width: 50, height: 50, color: Colors.green),
        ),
        Positioned(
          top: 10,
          right: 5,
          width: 100,
          height: 100,
          child: Container(color: Colors.yellow),
        ),
      ],
    );
  }
}
