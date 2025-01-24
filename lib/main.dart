import 'package:flutter/material.dart';
import 'package:salama/SignUP.dart';
import 'package:salama/ReportIssue.dart';
import 'package:salama/LogIn.dart';
import 'package:salama/soon.dart';

void main() {
  runApp(SalamaApp());
}

class SalamaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SignUpPage(),
      home: LogInPage(),
      //home: ReportIssue(),
      //home: HomePage(),
      //home: Soon(),
    );
  }
}
