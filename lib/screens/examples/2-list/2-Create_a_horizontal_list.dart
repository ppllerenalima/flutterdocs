import 'dart:ui';

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: ScrollConfiguration(
          // Add a custom scroll behavior that
          // allows all devices to drag the list.
          behavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {...PointerDeviceKind.values},
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (final color in Colors.primaries)
                Container(width: 160, color: color),
            ],
          ),
        ),
      ),
    );
  }
}
