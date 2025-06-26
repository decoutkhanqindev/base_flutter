import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(child: Scaffold(body: BodyMenuDemo())),
    ),
  );
}

class Body1 extends StatelessWidget {
  const Body1({super.key});

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

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // weight
        Expanded(
          flex: 1,
          child: Container(width: 100, height: 100, color: Colors.green),
        ),
        Container(width: 100, height: 100, color: Colors.blue),
        // weight
        Expanded(
          flex: 2,
          child: Container(width: 100, height: 100, color: Colors.red),
        ),
      ],
    );
  }
}

class BodyMenuDemo extends StatelessWidget {
  const BodyMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("Home"), Text("Settings"), Text("About")],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Home Title"),
                      Expanded(flex: 1, child: BaseItem()),
                      Expanded(flex: 1, child: BaseItem()),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
