import 'package:flutter/material.dart';

import 'builder.dart';

class OtpPage extends StatefulWidget {
  static final routeName = "otp-page";
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              Container(
                height: mQ.height * 0.3,
                color: Color(0xffF9DC3A),
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, right: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
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
                            top: 15, right: 30, left: 0, bottom: 10),
                        child: Text(
                          "Enter      Verification code",
                          maxLines: 2,
                          style: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      // SizedBox(height: mQ.height * 0.01),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 7, right: 30, left: 0, bottom: 10),
                        child: Text(
                          "Enter code we've sent on given number",
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
              SizedBox(
                height: mQ.height * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Enter 6 digit verification code",
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 10),
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
                      hintText: "Enter code",
                      hintStyle: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onSubmitted: (e) {},
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.1,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  width: double.maxFinite,
                  height: mQ.height * 0.05,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(Builders.routeName);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            color: Color(0xffF9DC3A),
                            child: Text(
                              "CONTINUE",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffF9DC3A),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "RESEND",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
