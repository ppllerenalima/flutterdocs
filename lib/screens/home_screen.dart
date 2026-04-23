import 'package:flutter/material.dart';
import 'package:flutterdocs/core/example_model.dart';
import 'package:flutterdocs/screens/examples/2-list/1-Use_lists.dart';
import 'package:flutterdocs/screens/examples/2-list/2-Create_a_horizontal_list.dart';
import 'package:flutterdocs/screens/examples/2-list/3-Create_a_grid_list.dart';
import 'package:flutterdocs/screens/examples/2-list/4-Create_lists_with_different_types_of_items.dart';
import 'package:flutterdocs/screens/examples/2-list/5-List_with_spaced_items.dart';
import 'package:flutterdocs/screens/examples/2-list/6-Work_with_long_lists.dart';

void main() => runApp(const HomeScreen());

final catalog = [
  CatalogNode(
    title: 'User Interface',
    children: [
      CatalogNode(
        title: 'Layout',
        children: [
          CatalogNode(
            title: 'Lists & Grids',
            children: [
              CatalogNode(title: 'Use lists', screen: const Uselists()),
              CatalogNode(
                title: 'Horizontal list',
                screen: const HorizontalList(),
              ),
              CatalogNode(title: 'Grid list', screen: const GridList()),
              CatalogNode(
                title: 'Different item types',
                screen: DifferentTypesOfItems(
                  items: List<ListItem>.generate(
                    1000,
                    (i) => i % 6 == 0
                        ? HeadingItem('Heading $i')
                        : MessageItem('Sender $i', 'Message body $i'),
                  ),
                ),
              ),
              CatalogNode(
                title: 'Spaced items',
                screen: const SpacedItemsList(),
              ),
              CatalogNode(
                title: 'Long list',
                screen: LongListScreen(
                  items: List.generate(10000, (i) => 'Item $i'),
                ),
              ),
            ],
          ),

          CatalogNode(
            title: 'Scrolling',
            children: [
              CatalogNode(title: 'Slivers', screen: const Placeholder()),
              CatalogNode(
                title: 'Floating AppBar',
                screen: const Placeholder(),
              ),
              CatalogNode(
                title: 'Parallax effect',
                screen: const Placeholder(),
              ),
            ],
          ),
        ],
      ),

      CatalogNode(
        title: 'Adaptive & Responsive Design',
        children: [
          CatalogNode(title: 'General approach', screen: const Placeholder()),
          CatalogNode(
            title: 'SafeArea & MediaQuery',
            screen: const Placeholder(),
          ),
          CatalogNode(title: 'Large screens', screen: const Placeholder()),
        ],
      ),
    ],
  ),

  CatalogNode(
    title: 'Beyond UI',
    children: [
      CatalogNode(
        title: 'Data & Backend',
        children: [
          CatalogNode(title: 'State management', screen: const Placeholder()),
          CatalogNode(title: 'Networking & HTTP', screen: const Placeholder()),
        ],
      ),
      CatalogNode(title: 'App Architecture', screen: const Placeholder()),
    ],
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatalogScreen(title: 'Flutter Catalog', nodes: catalog),
    );
  }
}
