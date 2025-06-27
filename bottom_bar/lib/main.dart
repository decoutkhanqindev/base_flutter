import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SafeArea(child: Layout())));
}

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRailDemo(
            selectedIndex: selectedIndex,
            onIndexChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: [
              BaseScreen(content: "Home"),
              BaseScreen(content: "Search"),
              BaseScreen(content: "Profile"),
              BaseScreen(content: "Settings"),
            ][selectedIndex],
          ),
        ],
      ),

      // const [
      //   BaseScreen(content: "Home"),
      //   BaseScreen(content: "Search"),
      //   BaseScreen(content: "Profile"),
      //   BaseScreen(content: "Settings"),
      // ][selectedIndex],
      // bottomNavigationBar: NavigationBarDemo(
      //   selectedIndex: selectedIndex,
      //   onIndexChanged: (index) {
      //     setState(() {
      //       selectedIndex = index;
      //     });
      //   },
      // ),
    );
  }
}

class BaseScreen extends StatelessWidget {
  final String content;

  const BaseScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center, child: Text(content));
  }
}

class NavigationBarDemo extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  const NavigationBarDemo({
    super.key,
    required this.selectedIndex,
    required this.onIndexChanged,
  });

  @override
  State<NavigationBarDemo> createState() => _NavigationBarDemoState();
}

class _NavigationBarDemoState extends State<NavigationBarDemo> {
  @override
  Widget build(BuildContext context) {
    return
    // BottomNavigationBar in Material 2
    NavigationBar(
      selectedIndex: widget.selectedIndex,
      destinations: const [
        BaseNavigationDestination(icon: Icons.home, title: "Home"),
        BaseNavigationDestination(icon: Icons.search, title: "Search"),
        BaseNavigationDestination(icon: Icons.person, title: "Profile"),
        BaseNavigationDestination(icon: Icons.settings, title: "Settings"),
      ],
      onDestinationSelected: widget.onIndexChanged,
    );
  }
}

class BaseNavigationDestination extends StatelessWidget {
  final String title;
  final IconData icon;

  const BaseNavigationDestination({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(icon: Icon(icon), label: title); // badge
  }
}

class NavigationRailDemo extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  const NavigationRailDemo({
    super.key,
    required this.selectedIndex,
    required this.onIndexChanged,
  });

  @override
  State<NavigationRailDemo> createState() => _NavigationRailDemoState();
}

class _NavigationRailDemoState extends State<NavigationRailDemo> {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: widget.selectedIndex,
      destinations: [
        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
        NavigationRailDestination(
          icon: Icon(Icons.search),
          label: Text("Search"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.person),
          label: Text("Profile"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.settings),
          label: Text("Settings"),
        ),
      ],
      onDestinationSelected: widget.onIndexChanged,
    );
  }
}
