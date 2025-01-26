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
              _buildAppLogo(),
              SizedBox(height: 300),
              _buildSoonText(),
              SizedBox(height: 10),
              _buildMotivationalText(),
              Spacer(),
              _buildBackButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppLogo() {
    return Row(
      children: [
        Image.asset(
          'assets/logo.png',
          width: 60,
          height: 60,
        ),
        Spacer(),
        Image.asset(
          'assets/logoText.png',
          width: 80,
          height: 80,
        ),
      ],
    );
  }

  Widget _buildSoonText() {
    return Text(
      'Soon!',
      style: TextStyle(
        color: Colors.white,
        fontFamily: "Cairo",
        fontSize: 56,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildMotivationalText() {
    return Text(
      'نعمل سويا من اجل سلامة اوطاننا',
      style: TextStyle(
        color: Colors.white,
        fontFamily: "Cairo",
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
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
