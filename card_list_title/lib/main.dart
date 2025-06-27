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
  Map<String, double> products = {"Rice": 8.0, "Milk": 12, "Shirt": 50};

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProductList(products: products));
  }
}

class ProductList extends StatelessWidget {
  final Map<String, double> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) => CardItem(
        title: products.keys.elementAt(index),
        subtitle: products[products.keys.elementAt(index)].toString(),
        icon: Icons.shopping_cart,
        color: Colors.green,
        onTap: (title) {
          print(title);
        },
      ),
      itemCount: products.length,
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final ValueChanged<String> onTap;

  const CardItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shadowColor: Colors.black,
      elevation: 8,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          ListTile(
            leading: Icon(icon),
            title: Text(title),
            subtitle: Text(subtitle),
            isThreeLine: true,
            onTap: () {
              onTap(title);
            },
          ),
        ],
      ),
    );
  }
}
