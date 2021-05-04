import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RideComplete extends StatefulWidget {
  static final routeName = "ride-complete-page";
  @override
  _RideCompleteState createState() => _RideCompleteState();
}

class _RideCompleteState extends State<RideComplete> {
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.black26,
              height: mQ.height * 1,
              width: mQ.width * 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 40,
              ),
              child: Container(
                width: double.maxFinite,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xff7bf534),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.lime[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 75,
                              width: 75,
                              child: Icon(
                                Icons.image,
                                color: Colors.black26,
                                size: 45,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              height: 75,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ride fare",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 22,
                                    ),
                                  ),
                                  // SizedBox(height: 8),
                                  Text(
                                    "Rs 450",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Color(0xff7bf534),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              // height: 75,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Payment via",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                      width: 117,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.wallet_giftcard,
                                            color: Color(0xff7bf534),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Wallet",
                                            style: TextStyle(),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 55),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Color(0xff7bf534),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  width: mQ.width * 0.6,
                                  child: Text(
                                    "2nd ave, World Trade Center, New York",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Icon(
                                  Icons.directions,
                                  color: Color(0xff7bf534),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  width: mQ.width * 0.6,
                                  child: Text(
                                    "1124, Golden Point Street, New York",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      DottedLine(
                        dashColor: Colors.black38,
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        child: Text(
                          "Rate your ride",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        child: RatingBar.builder(
                          itemSize: 50,
                          ignoreGestures: true,
                          onRatingUpdate: (rating) {},
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      TextField(
                        autofocus: true,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          hintText: "Add Comment(Optional)",
                          hintStyle: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context)
                          //     .pushNamed(HomeDriverScreen.routeName);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: mQ.width * 1,
                          height: 50,
                          color: Colors.lightGreen,
                          child: Text(
                            "Pay & Submit Review",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
