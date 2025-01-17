import 'package:flutter/material.dart';
import 'package:testflutterproject/SignUP.dart';


void main() {
  runApp(SalamaApp());
}
class SalamaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignUpPage(),
    );
  }
}


