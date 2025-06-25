import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(body: Center(child: RichTextDemo())),
      ),
    ),
  );
}

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ....",
      // maxLines: 2,
      // overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      // textDirection: TextDirection.rtl,
      // softWrap: false,
      textScaler: TextScaler.linear(1.3),
      style: (TextStyle(
        color: Colors.green,
        backgroundColor: Colors.yellow,
        letterSpacing: 3,
        wordSpacing: 10,
        // decoration: TextDecoration.underline,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        fontFamily: GoogleFonts.playfairDisplay().fontFamily,
      )),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "A",
            style: TextStyle(fontSize: 24, backgroundColor: Colors.black),
          ),
          TextSpan(
            text: "B",
            style: TextStyle(fontSize: 32, backgroundColor: Colors.black),
          ),
          TextSpan(
            text: "C",
            children: [
              TextSpan(
                text: "d",
                onEnter: (event) {
                  print("enter");
                },
                onExit: (event) {
                  print("exit");
                },
              ),
              TextSpan(text: "e"),
            ],
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
