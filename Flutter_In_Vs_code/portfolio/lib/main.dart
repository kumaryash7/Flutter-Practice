// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: SingleChildScrollView(
        child: Container(
          width: 433,
          height: 926,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 428.91,
                    height: 28.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      color: Color(0x70ecd0cc),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 128.16,
                top: 128.83,
                child: Container(
                  width: 171.67,
                  height: 181.21,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffc4c4c4),
                  ),
                ),
              ),
              Positioned(
                left: 143.95,
                top: 305.90,
                child: SizedBox(
                  width: 140,
                  height: 53.05,
                  child: Text(
                    "vishnu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 48,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -2.49,
                top: 477.91,
                child: Container(
                  width: 431.49,
                  height: 47.84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    color: Color(0xffe6e6e6),
                  ),
                  padding: const EdgeInsets.only(
                    left: 13,
                    right: 382,
                    top: 19,
                    bottom: 7,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 34.96,
                        child: Text(
                          "City",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 78.80,
                top: 482.29,
                child: SizedBox(
                  width: 368,
                  height: 53.03,
                  child: Text(
                    "New Delhi",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -2.44,
                top: 542.58,
                child: Container(
                  width: 431.44,
                  height: 47.37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    color: Color(0xffdddddd),
                  ),
                  padding: const EdgeInsets.only(
                    left: 13,
                    right: 75,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "skills",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 22.80),
                      Text(
                        "Blockchain Expert",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -2.84,
                top: 414.06,
                child: Container(
                  width: 431.86,
                  height: 50.57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    color: Color(0xffe1e1e1),
                  ),
                  padding: const EdgeInsets.only(
                    left: 6,
                    right: 375,
                    top: 20,
                    bottom: 9,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "E-mail",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 70.37,
                top: 414.21,
                child: SizedBox(
                  width: 427.17,
                  height: 63.70,
                  child: Text(
                    "yadav@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 148.95,
                top: 358.95,
                child: Text(
                  "9844561234",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 28.01,
                child: Container(
                  width: 434.25,
                  height: 283.03,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: FlutterLogo(size: 282.03387451171875),
                ),
              ),
              Positioned(
                left: 125.40,
                top: 130.50,
                child: Container(
                  width: 168.95,
                  height: 181.21,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: FlutterLogo(size: 168.94781494140625),
                ),
              ),
              Positioned(
                left: 48.95,
                top: 611.76,
                child: Text(
                  "B_tech in Chemical Engineering",
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontSize: 24,
                  ),
                ),
              ),
              Positioned(
                left: 53.18,
                top: 725.08,
                child: SizedBox(
                  width: 82.40,
                  height: 93.77,
                  child: Text(
                    " AGE\n  19",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 214,
                top: 723.82,
                child: SizedBox(
                  width: 209,
                  height: 82.17,
                  child: Text(
                    "Profile Views\n      2000",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 851.65,
                child: Text(
                  "ABOUT Me",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 429.57,
                    height: 33.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      color: Color(0x7f7f3a44),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 671.24,
                child: Text(
                  "working time",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Positioned(
                left: 198.54,
                top: 674.77,
                child: Container(
                  width: 64.26,
                  height: 24.47,
                  color: Color(0xffc4c4c4),
                ),
              ),
              Positioned(
                left: 203.17,
                top: 673.01,
                child: Text(
                  "12 hr",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Positioned(
                left: 278.53,
                top: 671.24,
                child: Text(
                  "to",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Positioned(
                left: 316.26,
                top: 674.77,
                child: Container(
                  width: 64.26,
                  height: 24.47,
                  color: Color(0xffc4c4c4),
                ),
              ),
              Positioned(
                left: 320.89,
                top: 671.24,
                child: Text(
                  "15 hr",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
