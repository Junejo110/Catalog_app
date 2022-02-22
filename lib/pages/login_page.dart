import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlineshop_app/utils/Routes.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool ChnageButton = false;
  final _formkey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        ChnageButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        ChnageButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Welcome $name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 32.0,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "User Name",
                            labelText: "Name",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be empty";
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
                            hintText: "Password",
                            labelText: "Enter Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Material(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(ChnageButton ? 50 : 9),
                          child: InkWell(
                            onTap: () => movetoHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: ChnageButton ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: ChnageButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
