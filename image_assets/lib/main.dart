import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(home: SafeArea(child: Content())));
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/download.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          Container(height: 20),
          SvgPicture.asset(
            'assets/images/alien-svgrepo-com.svg',
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/images/vietnamese4.png',
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
