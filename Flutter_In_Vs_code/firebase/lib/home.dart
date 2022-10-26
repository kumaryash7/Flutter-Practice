import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController getcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final name = TextFormField(
        textAlign: TextAlign.left,
        controller: namecontroller,
        onSaved: (value) {
          value = namecontroller.text;
        },
        decoration: InputDecoration(
            hintText: "enter name",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));
    final age = TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.left,
        controller: agecontroller,
        onSaved: (value) {
          value = agecontroller.text;
        },
        decoration: InputDecoration(
            hintText: "enter age",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));

    return Material(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            name,
            SizedBox(
              height: 10,
            ),
            age,
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Map<String, dynamic> detail = {
                    "name": namecontroller.text,
                    "age": agecontroller.text
                  };
                  FirebaseFirestore.instance.collection("details").add(detail);
                },
                child: Text("Save")),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
