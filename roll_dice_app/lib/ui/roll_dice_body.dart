import 'package:flutter/material.dart';

class RollDiceBody extends StatelessWidget {
  final String image;
  final VoidCallback onRoll;

  const RollDiceBody({
    super.key,
    required this.image,
    required this.onRoll,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.greenAccent,
            Colors.blue,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: onRoll, child: const Text("Roll"))
        ],
      ),
    );
  }
}
