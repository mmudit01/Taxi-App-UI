import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'otp_page.dart';

class PhoneRegPage extends StatefulWidget {
  static final routeName = "phone-page";
  @override
  _PhoneRegPageState createState() => _PhoneRegPageState();
}

class _PhoneRegPageState extends State<PhoneRegPage> {
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: mQ.height * 0.3,
            color: Color(0xffF9DC3A),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, right: 30, left: 10, bottom: 10),
                    child: Text(
                      "Enter Your Registered Phone Number",
                      maxLines: 3,
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 42,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: mQ.height * 0.01),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Sign in with Your phone Number",
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
                  "Enter Phone Number",
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
                  hintText: "Enter your mobile number",
                  hintStyle: TextStyle(
                    color: Color(0xff303030),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                  ),
                ),
                onSubmitted: (e) {
                  Navigator.of(context).pushNamed(OtpPage.routeName);
                },
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(OtpPage.routeName);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: Color(0xffF9DC3A),
                        child: Text(
                          "SIGN IN",
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
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffF9DC3A),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "NEW USER?",
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
    );
  }
}
