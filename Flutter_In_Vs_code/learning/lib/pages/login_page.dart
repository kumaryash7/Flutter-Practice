// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/pages/home_page.dart';
import 'package:learning/utils/routes.dart';

void main(s) {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/lap_back5.jpg",
              fit: BoxFit.cover,
              width: 4000,
              height: 300,
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(color: Colors.blueAccent, fontSize: 33),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: " Enter UserName", labelText: "UserName"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "User Name Cannot Be Empty ";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: " Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Cannot Be Empty ";
                        } else if (value.length < 6) {
                          return "Password cannot be less than 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, MyRoutes.homeRoute);
                          moveToHome();
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changedButton ? 50 : 150,
                          height: 50,
                          child: Center(
                            child: changedButton
                                ? Icon(Icons.done)
                                : Text(
                                    "Login",
                                    style: TextStyle(fontSize: 20),
                                  ),
                          ),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
