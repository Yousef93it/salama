import 'package:flutter/material.dart';

class ReportIssue extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF71BAD1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Row(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 60, // Adjust the width as needed
                    height: 60, // Adjust the height as needed
                  ),
                  SizedBox(
                      width: 220), // Add horizontal space between the images
                  Image.asset(
                    'assets/logoText.png',
                    width: 80, // Adjust the width as needed
                    height: 80, // Adjust the height as needed
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 200, // Adjust the height as needed
                child: PageView(
                  children: [
                    Image.asset(
                      'assets/1.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/2.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/3.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.white, // Adjust the color as needed
                thickness: 1, // Adjust the thickness as needed
              ),
              SizedBox(height: 50),
              _ReportButton(context),
              SizedBox(height: 20),
              _Data(context),
              SizedBox(height: 20),
              _More(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ReportButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print("Sign Out button pressed!");

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
          'الإبلاغ عن خطر جديد',
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

  Widget _Data(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print("Sign Out button pressed!");

          print("تسجيل button clicked!");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFF6347),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 65),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 3,
        ),
        child: Text(
          ' استعرض التقارير',
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

  Widget _More(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print("Sign Out button pressed!");

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
          'تعرف على المزيد ',
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
