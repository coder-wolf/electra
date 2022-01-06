import "package:flutter/material.dart";
import 'package:labcse25/constants/size.dart';
import 'package:labcse25/screens/login/login_page.dart';
import 'package:labcse25/screens/signup/signup.dart';

import 'screens/consumer/view_bill.dart';

void main() {
  runApp(LabWebsite());
}

class LabWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login/view_bill',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => StartPoint(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/login/view_bill': (context) => ViewBillPage(),
      },
      debugShowCheckedModeBanner: false,
      // home: StartPoint(),
    );
  }
}

class StartPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width * (1 / 1000);
    return Container(
      child: LoginPage(),
    );
  }
}
