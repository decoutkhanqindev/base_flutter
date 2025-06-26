import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(child: Scaffold(body: ListViewBody())),
    ),
  );
}

class SingleChildScrollViewBody extends StatefulWidget {
  const SingleChildScrollViewBody({super.key});

  @override
  State<SingleChildScrollViewBody> createState() =>
      _SingleChildScrollViewBodyState();
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
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
                // ChildrenItem(),
              ],
            ),
      ),
    );
  }
}

class ListViewBody extends StatefulWidget {
  const ListViewBody({super.key});

  @override
  State<ListViewBody> createState() => _ListViewBody();
}

class _ListViewBody extends State<ListViewBody> {
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
      child: ListView.separated(
        // builder
        controller: scrollController,
        padding: EdgeInsets.all(8),
        // lazy load item and infinity if not limit item count
        itemBuilder: (context, index) => ChildrenItem(index),
        // limit not over 20 element
        itemCount: 20,
        // lazy load item and infinity if not limit item count
        separatorBuilder: (context, index) => SeparatedItem(),
      ),

      // ListView( // SingleChildScrollView + Row/Column
      //   controller: scrollController,
      //   padding: EdgeInsets.all(16),
      //   children: [
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //     ChildrenItem(),
      //   ],
      // ),
    );
  }
}

class ChildrenItem extends StatelessWidget {
  final int index;

  const ChildrenItem(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Text("$index")),
    );
  }
}

class SeparatedItem extends StatelessWidget {
  const SeparatedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.red,
      ),
    );
  }
}
