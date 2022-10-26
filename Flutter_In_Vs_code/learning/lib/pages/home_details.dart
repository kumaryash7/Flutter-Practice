import 'package:flutter/material.dart';
import 'package:learning/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image.network(catalog.image)],
      ),
    );
  }
}
