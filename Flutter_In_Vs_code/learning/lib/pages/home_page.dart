import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:learning/models/catalog.dart';
import 'package:learning/pages/home_details.dart';
import 'package:learning/widgets/drawer.dart';
import 'package:learning/widgets/item_widgets.dart';
import 'package:learning/models/catalog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    loadData() async {
      var catalogJson =
          await rootBundle.loadString("assets/files/catalog.json");
      print(catalogJson);
    }

    // final String name = "yash";
    // final int days = 30;
    @override
    void initState() {
      super.initState();
      loadData();
    }

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Catalog App")),
        ),
        body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? InkWell(
                onTap: () {
                  var catalog;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeDetailPage(catalog: catalog)));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      final item = CatalogModel.items[index];
                      return GridTile(child: Image.network(item.image));
                    },
                    itemCount: CatalogModel.items.length,
                  ),
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
        drawer: const MyDrawer());
  }
}
