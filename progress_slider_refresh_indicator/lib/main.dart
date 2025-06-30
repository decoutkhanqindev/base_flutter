import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SafeArea(child: Content())));
}

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  double sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => Container(
            height: 100,
            width: double.infinity,
            color: index % 3 == 0 ? Colors.red : Colors.blue,
          ),
        ),
        onRefresh: () async {},
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const CircularProgressIndicator(),
      //       Container(height: 16),
      //       const CircularProgressIndicator(
      //         value: 0.5,
      //         strokeWidth: 6,
      //         color: Colors.green,
      //         backgroundColor: Colors.grey,
      //       ),
      //       Container(height: 16),
      //       Container(height: 24, width: double.infinity, color: Colors.orange),
      //       const LinearProgressIndicator(),
      //       Slider(
      //         value: sliderValue,
      //         min: 0,
      //         max: 2,
      //         label: sliderValue.round().toString(),
      //         divisions: 2,
      //         onChanged: (value) {
      //           setState(() {
      //             sliderValue = value;
      //             print(sliderValue);
      //           });
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
