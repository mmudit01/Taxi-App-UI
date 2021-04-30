import 'package:flutter/material.dart';

import 'Drawer.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = "home-page";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Mydrawer(),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                height: mQ.height * 0.2,
                color: Colors.green[50],
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                          "Enter requested information",
                          style: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Phone Number",
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: TextField(
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff303030),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            onSubmitted: (e) {},
                            keyboardType: TextInputType.number,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Full Name",
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: TextField(
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: "Enter Name",
                              hintStyle: TextStyle(
                                color: Color(0xff303030),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            onSubmitted: (e) {},
                            keyboardType: TextInputType.number,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Email Address",
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: TextField(
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              hintStyle: TextStyle(
                                color: Color(0xff303030),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            onSubmitted: (e) {},
                            keyboardType: TextInputType.number,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.1,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: mQ.height * 0.92),
            width: double.maxFinite,
            height: mQ.height * 0.08,
            child: Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.lightGreen,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 170, left: 30),
                height: 80,
                width: 80,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
