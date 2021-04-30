import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.close,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
              Container(
                height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 45,
                          color: Colors.lightGreen,
                        ),
                      ),
                      SizedBox(width: 25),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sam Smith",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "+91 1234567890",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              listile(
                context,
                "Home",
                Icons.home,
              ),
              listile(context, "My Profile", Icons.person_add_alt_1_outlined),
              listile(context, "My Address", Icons.location_pin),
              listile(context, "My Rides", Icons.car_rental),
              listile(context, "Wallet", Icons.wallet_giftcard),
              listile(context, "Promo Code", Icons.label),
              listile(context, "FAQs", Icons.question_answer_sharp),
              listile(context, "Contact us", Icons.email),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listile(BuildContext context, String title, IconData file) {
  return Container(
    height: 38,
    child: Center(
      child: ListTile(
        leading: Icon(
          file,
          color: Colors.lightGreen,
        ),
        title: Align(
          alignment: Alignment(-1, 0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Text(""),
      ),
    ),
  );
}
