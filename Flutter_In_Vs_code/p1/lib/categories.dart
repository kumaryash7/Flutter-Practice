import 'package:flutter/material.dart';
import 'package:p1/cateogry_item.dart';
import 'package:p1/dummy_data.dart';

class CateogryScreen extends StatefulWidget {
  const CateogryScreen({Key? key}) : super(key: key);

  @override
  State<CateogryScreen> createState() => _CateogryScreenState();
}

class _CateogryScreenState extends State<CateogryScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEOGRIES
          .map((catData) => CateogryItem(
                title: catData.title,
                color: catData.color,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20),
    );
  }
}
