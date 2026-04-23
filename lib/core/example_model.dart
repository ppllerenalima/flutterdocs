import 'package:flutter/material.dart';

class ExampleItem {
  final String title;
  final Widget screen;

  const ExampleItem({required this.title, required this.screen});
}

class CatalogNode {
  final String title;
  final List<CatalogNode>? children;
  final Widget? screen;

  const CatalogNode({required this.title, this.children, this.screen});

  bool get isLeaf => screen != null;
}

class CatalogScreen extends StatelessWidget {
  final String title;
  final List<CatalogNode> nodes;

  const CatalogScreen({super.key, required this.title, required this.nodes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: nodes.length,
        itemBuilder: (context, index) {
          final node = nodes[index];

          return ListTile(
            title: Text(node.title),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              if (node.isLeaf) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => node.screen!),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CatalogScreen(title: node.title, nodes: node.children!),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
