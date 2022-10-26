// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
// to import from the other dart file in lib folder
// generally more than one widget should be written in other dart file to have clear code
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// here state is a generic type hence we used <> and linked it to the MyApp
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color ?',
      'What\s your favourite animal'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz App"),
        ),
        // <Widget> identifies that the List[] will conatains a list of widgets
        // Even if we don't use <Widgets> , it automatically detects that list widegts are used
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
