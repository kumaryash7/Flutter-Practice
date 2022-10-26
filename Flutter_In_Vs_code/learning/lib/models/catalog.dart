import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
        id: "Yash001",
        name: "Iphone 12",
        desc: "Appple Iphone",
        price: 100000,
        color: "black",
        image:
            "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__340.jpg"),
    Item(
        id: "Yash002",
        name: "Iphone 11",
        desc: "Appple Iphone 11",
        price: 10500,
        color: "white",
        image:
            "https://cdn.pixabay.com/photo/2017/10/12/22/17/business-2846221__340.jpg"),
    Item(
        id: "Yash001",
        name: "Iphone 12",
        desc: "Appple Iphone",
        price: 2000,
        color: "black",
        image:
            "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__340.jpg"),
    Item(
        id: "Yash002",
        name: "Iphone 11",
        desc: "Appple Iphone 11",
        price: 1000,
        color: "white",
        image:
            "https://cdn.pixabay.com/photo/2017/10/12/22/17/business-2846221__340.jpg"),
    Item(
        id: "Yash001",
        name: "Iphone 12",
        desc: "Appple Iphone",
        price: 50000,
        color: "black",
        image:
            "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__340.jpg"),
    Item(
        id: "Yash002",
        name: "Iphone 11",
        desc: "Appple Iphone 11",
        price: 60000,
        color: "white",
        image:
            "https://cdn.pixabay.com/photo/2017/10/12/22/17/business-2846221__340.jpg"),
    Item(
        id: "Yash001",
        name: "Iphone 12",
        desc: "Appple Iphone",
        price: 77000,
        color: "black",
        image:
            "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__340.jpg"),
    Item(
        id: "Yash002",
        name: "Iphone 11",
        desc: "Appple Iphone 11",
        price: 330000,
        color: "white",
        image:
            "https://cdn.pixabay.com/photo/2017/10/12/22/17/business-2846221__340.jpg"),
    Item(
        id: "Yash001",
        name: "Iphone 12",
        desc: "Appple Iphone",
        price: 100000,
        color: "black",
        image:
            "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__340.jpg"),
    Item(
        id: "Yash002",
        name: "Iphone 11",
        desc: "Appple Iphone 11",
        price: 100000,
        color: "white",
        image:
            "https://cdn.pixabay.com/photo/2017/10/12/22/17/business-2846221__340.jpg"),
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
