import 'package:flutter/material.dart';

class LongListScreen extends StatelessWidget {
  final List<String> items;

  const LongListScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(title: Text(items.first)),
        itemBuilder: (context, index) {
          return ListTile(title: Text(items[index]));
        },
      ),
    );
  }
}
