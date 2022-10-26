// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfirstapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // single child scrollview is used to make page scrollable
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.jpg",
              fit: BoxFit.cover,
              height: 300,
              width: 1100,
            ),
            // sizedbox gives space between the item or use padding
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome $name',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: " Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                        // obscure text is used to hide password
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: " Enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password must contain atleast 6 letters";
                          }
                          return null;
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // it is just like intent inside button.setonclick listener
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login "),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(10, 30),
                    //   ),
                    // )
                    // wrapping the container widget with inkwell widget to make the button responsive
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () => movetoHome(context),

                        // we replaced the container with Animated Container to make animations
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          // if button is tapped then button width is set to 50
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                    ),
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
