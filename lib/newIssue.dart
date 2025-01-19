import 'package:flutter/material.dart';

class NewIssue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF71BAD1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
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
              Text('Report Issue Page'),
              SizedBox(
                height: 300,
              ),
              _backButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'رجوع',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Cairo",
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(width: 8), // Adjust the width as needed
          IconButton(
            icon: Icon(Icons.arrow_right, color: Colors.white, size: 50),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
