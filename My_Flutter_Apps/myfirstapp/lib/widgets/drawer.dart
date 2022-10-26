import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/login_page.dart';
import 'package:myfirstapp/utils/routes.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://images.news18.com/ibnlive/uploads/2019/06/Untitled-design-683.png?im=FitAndFill,width=1200,height=1200";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountEmail: Text("scks@gmail.com"),
                  accountName: Text("Yash Kumar"),
                  currentAccountPicture:
                      CircleAvatar(child: Image.network(imageUrl)),
                )),
            ListTile(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, MyRoutes.loginRoute);
                });
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.lato().fontFamily),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.lato().fontFamily),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.lato().fontFamily),
              ),
            )
          ],
        ),
      ),
    );
  }
}
