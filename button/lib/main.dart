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
    return Container(
      padding: EdgeInsets.all(20),
      child:
          // TextButton, ElevatedButton, OutlinedButton, ElevatedButton.icon,
          TextButton(
            onPressed: () {
              print("Button Pressed");
            }, // disable by set null
            style:
                // TextButton, Elevated Button, OutlinedButton
                OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 8,
                  shadowColor: Colors.orange.withOpacity(0.3),
                  fixedSize: Size(200, 200),
                  side: BorderSide(width: 4, color: Colors.red),
                ),
            child: Text("Button"),
          ),
    );
  }
}
