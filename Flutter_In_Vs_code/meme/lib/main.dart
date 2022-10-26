import 'dart:io';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meme App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image;
  File? _imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meme Generator App"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/laughh.jpg",
                    height: 130,
                    fit: BoxFit.cover,
                    // width: 600,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                  child: Column(
                children: const [
                  Text(
                    "MEME",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "GENERATOR",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Image.asset(
                  "assets/images/meme1.jpg",
                  width: double.infinity,
                  height: 300,
                ),
              ),
              Stack(
                children: [
                  _image != null
                      ? Image.file(
                          _image!,
                          height: 300,
                        )
                      : Container(),
                  Container(
                    child: Column(
                      children: [Text(""), Spacer(), Text("")],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
