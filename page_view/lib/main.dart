import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Content()),
    ),
  );
}

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  int count = 10;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageViewDemo2(
            count: count,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          PageIndicator(count: count, currentIndex: currentIndex),
        ],
      ),
    );
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height / 2,
      child: PageView(
        children: [
          PageViewItem(index: 1, color: Colors.red),
          PageViewItem(index: 2, color: Colors.green),
          PageViewItem(index: 3, color: Colors.blue),
          PageViewItem(index: 4, color: Colors.yellow),
          PageViewItem(index: 5, color: Colors.orange),
        ],
      ),
    );
  }
}

class PageViewDemo2 extends StatefulWidget {
  final int count;
  final ValueChanged<int> onPageChanged;

  const PageViewDemo2({
    super.key,
    required this.count,
    required this.onPageChanged,
  });

  @override
  State<PageViewDemo2> createState() => _PageViewDemo2State();
}

class _PageViewDemo2State extends State<PageViewDemo2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height / 2,
      child: PageView.builder(
        itemCount: widget.count,
        // lazy load and infinity scroll
        itemBuilder: (context, index) => PageViewItem(
          index: index + 1,
          color: index % 2 == 0 ? Colors.red : Colors.green,
        ),
        onPageChanged: widget.onPageChanged,
      ),
    );
  }
}

class PageViewItem extends StatelessWidget {
  final int index;
  final Color color;

  const PageViewItem({super.key, required this.index, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text("Page $index", style: TextStyle(color: Colors.white)),
    );
  }
}

class PageIndicator extends StatefulWidget {
  final int count;
  final int currentIndex;

  const PageIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
  });

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < widget.count; i++)
          PageIndicatorItem(index: i, isActive: i == widget.currentIndex),
      ],
    );
  }
}

class PageIndicatorItem extends StatelessWidget {
  final int index;
  final bool isActive;

  const PageIndicatorItem({
    super.key,
    required this.index,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
