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
      color: Colors.yellow,
      child: Column(
        // vertical size
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            // horizontal alignment
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // vertical alignment
            crossAxisAlignment: CrossAxisAlignment.center,
            // textDirection: TextDirection.rtl,
            spacing: 16,
            children: [
              BaseItem(),
              Container(width: 50, height: 200, color: Colors.green),
              BaseItem(),
              BaseItem(),
            ],
          ),
          Text("Base Item"),
        ],
      ),
    );
  }
}

class BaseItem extends StatelessWidget {
  const BaseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
