import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(child: Scaffold(body: SingleChildScrollViewBody())),
    ),
  );
}

class SingleChildScrollViewBody extends StatefulWidget {

  const SingleChildScrollViewBody({super.key});

  @override
  State<SingleChildScrollViewBody> createState() => _SingleChildScrollViewBodyState();
}

class _SingleChildScrollViewBodyState extends State<SingleChildScrollViewBody> {
  ScrollController scrollController = ScrollController();
  
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print('scrollController.offset: ${scrollController.offset}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        controller: scrollController,
        padding: EdgeInsets.all(8),
        // physics: AlwaysScrollableScrollPhysics(),
        // reverse: true,
        scrollDirection: Axis.horizontal, // vertical
        child:
        // Row or Column
        Row(
          children: [
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
            ChildrenItem(),
          ],
        ),
      ),
    );
  }
}

class ChildrenItem extends StatelessWidget {
  const ChildrenItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
