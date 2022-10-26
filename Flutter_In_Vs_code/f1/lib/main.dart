import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProfileUI2());
}

class ProfileUI2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("User Info")),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/t.png"),
                          fit: BoxFit.cover)),
                  child: Container(
                    width: double.infinity,
                    height: 130,
                    child: Container(
                      alignment: Alignment(0.0, 2.5),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage("Add you profile DP image URL here "),
                        radius: 60.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Yash Dhobi",
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Color.fromARGB(255, 10, 10, 10),
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " Roorkee, India",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "yashdhobi121@gmail.com",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  " 9265824543",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    elevation: 2.0,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Text(
                          "Skill Sets",
                          style: TextStyle(
                              letterSpacing: 2.0, fontWeight: FontWeight.w900),
                        ))),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "        #  BS in BUsiness Management   ",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(115, 176, 11, 218),
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "          & Administration    ",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(115, 236, 11, 225),
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "          Graduation :: 2019   ",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "       Earned 'DHOBI OF THE DECADE ' award in childhood   ",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "19",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Profile Views",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "2000",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "About ME",
                  style: TextStyle(
                      color: Color.fromARGB(255, 228, 21, 21),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5.0),
                    ),
                    hintText: 'ABOUT ME',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
