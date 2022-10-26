import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //  final tells that this will never change
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // to make the text center of app
      margin: EdgeInsets.all(100),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
