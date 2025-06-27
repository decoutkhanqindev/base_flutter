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
  List<String> items = ["Male", "Female"];
  late String selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = items[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButtonDemo(
            items: items,
            onChanged: (item) {
              setState(() {
                selectedItem = item;
              });
            },
          ),
          Text(selectedItem),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child:
          // TextButton, ElevatedButton, OutlinedButton, ElevatedButton.icon,
          TextButton(
            onPressed: () {
              print("Button Pressed");
            }, // disable by set null
            style:
                // TextButton, Elevated Button, OutlinedButton
                OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 8,
                  shadowColor: Colors.orange.withOpacity(0.3),
                  fixedSize: Size(200, 200),
                  side: BorderSide(width: 4, color: Colors.red),
                ),
            child: const Text("Button"),
          ),
    );
  }
}

class DropdownButtonDemo extends StatefulWidget {
  final List<String> items;
  final ValueChanged<String> onChanged;

  const DropdownButtonDemo({
    super.key,
    required this.items,
    required this.onChanged,
  });

  @override
  State<DropdownButtonDemo> createState() => _DropdownButtonDemoState();
}

class _DropdownButtonDemoState extends State<DropdownButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("SEX"),
        // DropdownButtonFormField
        DropdownButton(
          borderRadius: BorderRadius.circular(10),
          items: widget.items
              .map((item) => DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
          onChanged: (item) {
            widget.onChanged(item.toString());
          },
        ),
      ],
    );
  }
}
