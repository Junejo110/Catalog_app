import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png"),
          SizedBox(height: 20.0),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.lato().fontFamily,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter-Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter-password", labelText: "password"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(onPressed: () {}, child: Text("login-Here")),
        ],
      ),
    );
  }
}
