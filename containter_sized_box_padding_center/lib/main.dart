import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainScreen()));
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Body(), backgroundColor: Colors.green),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        // color: Colors.blue,
        margin: EdgeInsets.all(20),
        // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            style: BorderStyle.solid,
            width: 5,
            color: Colors.red,
          ),
        ),
        child: Text("Hello, World!"),
      ),
    );
  }
}
