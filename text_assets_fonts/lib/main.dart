import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(body: Center(child: TextDemo())),
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
