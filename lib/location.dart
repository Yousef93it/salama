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
              _buildAppLogo(),
              SizedBox(height: 20),
              _buildTitle(),
              SizedBox(height: 20),
              _buildGetLocationButton(context),
              SizedBox(height: 20),
              _buildAdditionalInfoTitle(),
              SizedBox(height: 20),
              _buildCityField(),
              SizedBox(height: 20),
              _buildAreaField(),
              SizedBox(height: 20),
              _buildNeighborhoodField(),
              SizedBox(height: 20),
              _buildDetailedLocationField(),
              SizedBox(height: 20),
              _buildSubmitButton(context),
              SizedBox(height: 40),
              _buildWarningText(),
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

  Widget _buildTitle() {
    return Text(
      'قم بتحديد الموقع بشكل تلقائي',
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Cairo",
        fontSize: 24,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget _buildGetLocationButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Get Location button pressed!");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF888888),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 120),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        'تحديد الموقع',
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Cairo",
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildAdditionalInfoTitle() {
    return Text(
      'معلومات اضافية',
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Cairo",
        fontSize: 24,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget _buildCityField() {
    return _buildTextField(hintText: ' المدينة');
  }

  Widget _buildAreaField() {
    return _buildTextField(hintText: ' المنطقة');
  }

  Widget _buildNeighborhoodField() {
    return _buildTextField(hintText: ' الحي');
  }

  Widget _buildDetailedLocationField() {
    return Container(
      width: 350,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFFDDEEF9),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xFFC3E8FF),
          width: 1,
        ),
      ),
      child: TextField(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        maxLines: null,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          hintText: ' الموقع بالتفصيل',
          hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.black, // Changed to black for better visibility
          fontFamily: "Cairo",
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText}) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFFDDEEF9),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xFFC3E8FF),
          width: 1,
        ),
      ),
      child: TextField(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        maxLines: null,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.black, // Changed to black for better visibility
          fontFamily: "Cairo",
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Submit button pressed!");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFF6347),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 3,
      ),
      child: Text(
        'تأكيد',
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Cairo",
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildWarningText() {
    return Text(
      'احذر من لمس المخلفات أو الاقتراب منها كثيراً فهذا يعرضك للخطر',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0XFF3A3A3A),
        fontFamily: "Cairo",
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }
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
