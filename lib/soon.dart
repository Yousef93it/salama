import 'package:flutter/material.dart';

class Soon extends StatelessWidget {
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
                  Spacer(), // Add horizontal space between the images

                  Image.asset(
                    'assets/logoText.png',
                    width: 80, // Adjust the width as needed
                    height: 80, // Adjust the height as needed
                  ),
                ],
              ),
              SizedBox(
                height: 300,
              ),
              Text(
                'Soon!',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Cairo",
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'نعمل سويا من اجل سلامة اوطاننا',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Cairo",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 310,
              ),
              Center(
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
                    IconButton(
                      icon: Icon(Icons.arrow_right,
                          color: Colors.white, size: 50),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
