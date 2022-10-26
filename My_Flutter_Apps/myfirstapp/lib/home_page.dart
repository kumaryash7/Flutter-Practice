import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('MY APP'),
        ),
        body: const Center(child: Text('MY HOME PAGE')),
        // drawer is just like menu in android dev
        drawer: const MyDrawer(),
      ),
    );
  }
}
