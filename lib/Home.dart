import 'package:flutter/material.dart';
import 'package:testflutterproject/LogIn.dart';
import 'package:testflutterproject/ReportIssue.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF71BAD1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 200, // Adjust the width as needed
              height: 200, // Adjust the height as needed
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                children: [
                  Text(
                    ' سلامة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Cairo",
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    ' معًا نحو وطن آمن',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Cairo",
                      fontSize: 23,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 100),
                  Text(
                    ' انت الان على بعد خطوة واحدة من انقاذ حياة الناس ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Cairo",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildReportIssus(context),
            SizedBox(height: 20),
            _buildSignOut(context),
          ],
        ),
      ),
    );
  }

  Widget _buildReportIssus(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print("Sign Up button pressed!");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReportIssue()),
          );
          print("تسجيل button clicked!");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFF6347),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 3,
        ),
        child: Text(
          'قم بالإبلاغ الان ',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Cairo",
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildSignOut(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print("Sign Out button pressed!");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LogInPage()),
          );
          print("تسجيل button clicked!");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFF6347),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 3,
        ),
        child: Text(
          'تسجيل الخروج',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Cairo",
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
