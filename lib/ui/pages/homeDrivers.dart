import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'FinishRide.dart';

class HomeDriverScreen extends StatefulWidget {
  static final routeName = "home-Driver-page";
  @override
  _HomeDriverScreenState createState() => _HomeDriverScreenState();
}

class _HomeDriverScreenState extends State<HomeDriverScreen> {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: mQ.width * 1,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border.all(),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.lime[100],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 100,
                                width: 100,
                                child: Icon(
                                  Icons.image,
                                  color: Colors.black26,
                                  size: 45,
                                ),
                              ),
                              SizedBox(width: 25),
                              Container(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "George Washington",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Maruti Suzuki Swift",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold
                                            color: Colors.black26,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          "DL XX X XXXX",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 3,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "4.7",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1),
                                Text(
                                  "Ariving in",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold
                                    color: Colors.black26,
                                  ),
                                ),
                                SizedBox(height: 1),
                                Text(
                                  "O4 Mins",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      width: mQ.width * 1,
                      height: 80,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.lime[100],
                              borderRadius: BorderRadius.circular(
                                25,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 3,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xff7bf534),
                                  ),
                                  SizedBox(width: 5),
                                  Text("Call Now")
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.lime[100],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 3,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: Color(0xff7bf534),
                                  ),
                                  SizedBox(width: 5),
                                  Text("Cancel")
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(RideComplete.routeName);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 120,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.lime[100],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 3,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_up,
                                      color: Color(0xff7bf534),
                                    ),
                                    SizedBox(width: 5),
                                    Text("More")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
