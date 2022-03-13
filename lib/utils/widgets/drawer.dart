import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.tealAccent,
        child: ListView(padding: EdgeInsets.zero, children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.tealAccent),
                accountName: Text(
                  "Adnan_Ali",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                accountEmail: Text("Adnan@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    )),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Adnan.png"),
                )),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
            iconColor: Colors.black,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
            ),
            title: Text(
              "My Profile",
              textScaleFactor: 1.2,
            ),
            iconColor: Colors.black,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.envelope,
            ),
            title: Text(
              "Email Me",
              textScaleFactor: 1.2,
            ),
            iconColor: Colors.black,
          ),
        ]),
      ),
    );
  }
}
