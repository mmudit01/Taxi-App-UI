import 'package:flutter/material.dart';

import 'Home.dart';

class Builders extends StatefulWidget {
  static final routeName = "builder-page";
  @override
  _BuildersState createState() => _BuildersState();
}

class _BuildersState extends State<Builders> {
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              height: mQ.height * 0.25,
              color: Color(0xffF9DC3A),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(Icons.arrow_back,
                          color: Colors.black54, size: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, right: 30, left: 10, bottom: 10),
                      child: Text(
                        "Sign up now",
                        style: TextStyle(
                          color: Color(0xff303030),
                          fontSize: 36,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        "Enter required information",
                        style: TextStyle(
                          color: Color(0xff303030),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: mQ.height * 0.055,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF9DC3A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 90,
                    width: 90,
                    child: Icon(
                      Icons.image,
                      color: Colors.black26,
                      size: 45,
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffF9DC3A),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 90,
                    width: 90,
                    child: Icon(
                      Icons.image,
                      color: Colors.black26,
                      size: 45,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mQ.height * 0.055,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      color: Color(0xff303030),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                child: TextField(
                  autofocus: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(
                      color: Color(0xff303030),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            ),
            SizedBox(
              height: mQ.height * 0.055,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Full Name",
                    style: TextStyle(
                      color: Color(0xff303030),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                child: TextField(
                  autofocus: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: TextStyle(
                      color: Color(0xff303030),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mQ.height * 0.055,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Email Address",
                    style: TextStyle(
                      color: Color(0xff303030),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                child: TextField(
                  autofocus: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                      color: Color(0xff303030),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            SizedBox(
              height: mQ.height * 0.055,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(HomeScreen.routeName);
                },
                child: Container(
                  height: mQ.height * 0.05,
                  width: mQ.width * 0.3,
                  alignment: Alignment.center,
                  color: Color(0xffF9DC3A),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
