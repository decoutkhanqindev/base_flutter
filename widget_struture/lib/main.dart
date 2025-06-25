import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("App Title"), backgroundColor: Colors.blue),
        body: SafeArea(child: Center(child: Text("App Content"))),
      ),
    ),
  );
}
