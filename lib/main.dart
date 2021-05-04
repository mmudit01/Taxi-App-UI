import 'package:flutter/material.dart';
import 'ui/pages/FinishRide.dart';
import 'ui/pages/homeCab.dart';
import 'ui/pages/homeDrivers.dart';
import 'ui/pages/otp_page.dart';
import 'ui/pages/phone_reg_page.dart';

import 'ui/pages/Home.dart';
import 'ui/pages/builder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Taxi',
      home: PhoneRegPage(),
      routes: {
        PhoneRegPage.routeName: (context) => PhoneRegPage(),
        OtpPage.routeName: (context) => OtpPage(),
        Builders.routeName: (context) => Builders(),
        HomeScreen.routeName: (context) => HomeScreen(),
        HomeCabScreen.routeName: (context) => HomeCabScreen(),
        HomeDriverScreen.routeName: (context) => HomeDriverScreen(),
        RideComplete.routeName: (context) => RideComplete(),
      },
    );
  }
}
