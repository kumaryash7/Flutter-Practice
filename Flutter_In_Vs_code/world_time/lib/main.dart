import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/loading.dart';
import './pages/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/loading": (context) => Loading(),
        "/location": (context) => ChooseLocation(),
      },
    );
  }
}
