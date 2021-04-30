import 'package:flutter/material.dart';

import 'Drawer.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = "home-page";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool dialog = false;
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BOOK YOUR RIDE",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.1,
        iconTheme: IconThemeData(
          color: Color(0xff7bf534),
        ),
      ),
      drawer: Mydrawer(),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            color: Colors.black26,
            height: mQ.height * 1,
            width: mQ.width * 1,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 3,
                  child: Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.location_pin,
                            color: Color(0xff7bf534),
                          ),
                          title: Text(
                            "2nd ave, World Trade Center, New York",
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.directions,
                            color: Color(0xff7bf534),
                          ),
                          title: Text(
                            "1124, Golden Point Street, New York",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: mQ.width * 1,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.00),
                          child: Text("Select Payment Mode"),
                        ),
                        Container(
                          width: 150,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                dialog = !dialog;
                              });
                            },
                            horizontalTitleGap: 0,
                            leading: Icon(
                              Icons.wallet_giftcard,
                              color: Color(0xff7bf534),
                            ),
                            title: Text(
                              "Wallet",
                              style: TextStyle(
                                color: Color(0xff7bf534),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: mQ.width * 1,
                    height: 50,
                    color: Color(0x857bf534),
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 210, top: 510),
            child: Visibility(
              visible: dialog,
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 150,
                        child: ListTile(
                          horizontalTitleGap: 0,
                          leading: Icon(
                            Icons.money,
                            color: Color(0xff7bf534),
                          ),
                          title: Text(
                            "Cash",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        child: ListTile(
                          horizontalTitleGap: 0,
                          leading: Icon(
                            Icons.wallet_giftcard,
                            color: Color(0xff7bf534),
                          ),
                          title: Text(
                            "Wallet",
                            style: TextStyle(
                              color: Color(0xff7bf534),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
