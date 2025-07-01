import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SafeArea(child: Content())));
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (canPop) {
        if (!canPop) {
          SnackBar snackBar = SnackBar(
            content: Text("Are u sure to exit app?"),
            backgroundColor: Colors.red,
            action: SnackBarAction(
              label: "OK",
              onPressed: () {
                print("OK");
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Scaffold(body: Center(child: Text("Body"))),
    );
  }
}
