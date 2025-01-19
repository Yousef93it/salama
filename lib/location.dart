import 'package:flutter/material.dart';

class Location extends StatelessWidget {
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
              Text(
                ' قم بتحديد الموقع بشكل تلقائي',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Cairo",
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              _getLocation(context),
              SizedBox(height: 20),
              Text(
                'معلومات اضافية',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Cairo",
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 50, // Keeps enough height to accommodate multiple lines
                decoration: BoxDecoration(
                  color: Color(0xFFDDEEF9), // Background color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFC3E8FF), // Border color and width
                    width: 1,
                  ),
                ),
                child: TextField(
                  textDirection:
                      TextDirection.rtl, // Right-to-left text direction
                  textAlign: TextAlign.right, // Align text to the right
                  maxLines: null, // Allows the text to wrap into multiple lines
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12), // Padding for text field content
                    hintText: ' المدينة',
                    hintStyle:
                        TextStyle(color: Color(0xFF9E9E9E)), // Hint text color
                    border: InputBorder.none, // Remove default underline
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 50, // Keeps enough height to accommodate multiple lines
                decoration: BoxDecoration(
                  color: Color(0xFFDDEEF9), // Background color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFC3E8FF), // Border color and width
                    width: 1,
                  ),
                ),
                child: TextField(
                  textDirection:
                      TextDirection.rtl, // Right-to-left text direction
                  textAlign: TextAlign.right, // Align text to the right
                  maxLines: null, // Allows the text to wrap into multiple lines
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12), // Padding for text field content
                    hintText: ' المنطقة',
                    hintStyle:
                        TextStyle(color: Color(0xFF9E9E9E)), // Hint text color
                    border: InputBorder.none, // Remove default underline
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 50, // Keeps enough height to accommodate multiple lines
                decoration: BoxDecoration(
                  color: Color(0xFFDDEEF9), // Background color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFC3E8FF), // Border color and width
                    width: 1,
                  ),
                ),
                child: TextField(
                  textDirection:
                      TextDirection.rtl, // Right-to-left text direction
                  textAlign: TextAlign.right, // Align text to the right
                  maxLines: null, // Allows the text to wrap into multiple lines
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12), // Padding for text field content
                    hintText: ' الحي',
                    hintStyle:
                        TextStyle(color: Color(0xFF9E9E9E)), // Hint text color
                    border: InputBorder.none, // Remove default underline
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height:
                    150, // Keeps enough height to accommodate multiple lines
                decoration: BoxDecoration(
                  color: Color(0xFFDDEEF9), // Background color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFC3E8FF), // Border color and width
                    width: 1,
                  ),
                ),
                child: TextField(
                  textDirection:
                      TextDirection.rtl, // Right-to-left text direction
                  textAlign: TextAlign.right, // Align text to the right
                  maxLines: null, // Allows the text to wrap into multiple lines
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12), // Padding for text field content
                    hintText: ' الموقع بالتفصيل',
                    hintStyle:
                        TextStyle(color: Color(0xFF9E9E9E)), // Hint text color
                    border: InputBorder.none, // Remove default underline
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 20),
              _locationSubmit(context),
              SizedBox(height: 130),
              Text(
                'احذر من لمس المخلفات أو الاقتراب منها كثيراً فهذا يعرضك للخطر',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF3A3A3A),
                  fontFamily: "Cairo",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getLocation(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print("_getLocation button pressed!");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF888888),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 120),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          'تحديدالموقع',
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

  Widget _locationSubmit(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print("Sign Out button pressed!");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Location()),
          );
          print("تسجيل button clicked!");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFF6347),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 150),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 3,
        ),
        child: Text(
          ' تاكيد',
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
