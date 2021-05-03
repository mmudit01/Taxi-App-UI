import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'homeDrivers.dart';

class HomeCabScreen extends StatefulWidget {
  static final routeName = "home-cab-page";
  @override
  _HomeCabScreenState createState() => _HomeCabScreenState();
}

class _HomeCabScreenState extends State<HomeCabScreen> {
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            color: Colors.black26,
            height: mQ.height * 1,
            width: mQ.width * 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 25),
                  // decoration: BoxDecoration(border: Border.all()),
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xff7bf534),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: mQ.width * 1,
                      height: 200,
                      decoration: BoxDecoration(
                          // color: Colors.transparent,
                          // border: Border.all(),
                          ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: mQ.width * 1,
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      // border: Border.all(),
                                      ),
                                  // height: 50,
                                  child: Image.asset(
                                    "images/Car${index + 1}.JPG",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(HomeDriverScreen.routeName);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: mQ.width * 1,
                        height: 50,
                        color: Color(0x857bf534),
                        child: Text(
                          "Ride Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
