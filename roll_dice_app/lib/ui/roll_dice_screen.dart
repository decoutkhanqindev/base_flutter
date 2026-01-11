import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/ui/roll_dice_body.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  final images = [
    "assets/images/dice-images/dice-1.png",
    "assets/images/dice-images/dice-2.png",
    "assets/images/dice-images/dice-3.png",
    "assets/images/dice-images/dice-4.png",
    "assets/images/dice-images/dice-5.png",
    "assets/images/dice-images/dice-6.png",
  ];
  var resultImage = "assets/images/dice-images/dice-1.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Roll Dice App"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: RollDiceBody(
          image: resultImage,
          onRoll: _rollDice,
        ),
      ),
    );
  }

  void _rollDice() {
    setState(() {
      resultImage = images[Random().nextInt(images.length)];
    });
  }
}
