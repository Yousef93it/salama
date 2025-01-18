import 'package:flutter/material.dart';
import 'package:testflutterproject/SignUP.dart';
import 'package:testflutterproject/ReportIssue.dart';
import 'package:testflutterproject/LogIn.dart';

void main() {
  runApp(SalamaApp());
}

class SalamaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SignUpPage(),
      // home: LogInPage(),
      home: ReportIssue(),
      //home: HomePage(),
    );
  }
}
