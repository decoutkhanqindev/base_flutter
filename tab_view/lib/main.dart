import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Layout()),
    ),
  );
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(appBar: AppBarDemo(), body: BodyDemo()),
    );
  }
}

class AppBarDemo extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text("App Bar Title"),
      bottom: const TabBar(
        isScrollable: true,
        tabs: [
          Tab(
            icon: Icon(Icons.home, color: Colors.red),
            child: Text("Home"),
          ),
          Tab(
            icon: Icon(Icons.settings, color: Colors.blue),
            child: Text("Settings"),
          ),
          Tab(
            child: Row(
              mainAxisSize: MainAxisSize.min, // wrap content
              spacing: 8,
              children: [
                Icon(Icons.person_2, color: Colors.green),
                Text("Profile"),
              ],
            ),
          ),
          Tab(
            icon: Icon(Icons.home, color: Colors.red),
            child: Text("Home"),
          ),
          Tab(
            icon: Icon(Icons.settings, color: Colors.blue),
            child: Text("Settings"),
          ),
          Tab(
            icon: Icon(Icons.home, color: Colors.red),
            child: Text("Home"),
          ),
          Tab(
            icon: Icon(Icons.settings, color: Colors.blue),
            child: Text("Settings"),
          ),
          Tab(
            icon: Icon(Icons.home, color: Colors.red),
            child: Text("Home"),
          ),
          Tab(
            icon: Icon(Icons.settings, color: Colors.blue),
            child: Text("Settings"),
          ),
          Tab(
            icon: Icon(Icons.home, color: Colors.red),
            child: Text("Home"),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}

class BodyDemo extends StatelessWidget {
  const BodyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        BaseScreen("Home Screen"),
        BaseScreen("Settings Screen"),
        BaseScreen("Profile Screen"),
        BaseScreen("Home Screen"),
        BaseScreen("Settings Screen"),
        BaseScreen("Home Screen"),
        BaseScreen("Settings Screen"),
        BaseScreen("Home Screen"),
        BaseScreen("Settings Screen"),
        BaseScreen("Home Screen"),
      ],
    );
  }
}

class BaseScreen extends StatelessWidget {
  final String content;

  const BaseScreen(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center, child: Text(content));
  }
}
