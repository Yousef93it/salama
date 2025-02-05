import 'package:flutter/material.dart';
import 'package:salama/uploadPhoto.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatelessWidget {
  // Constants for colors, fonts, and sizes
  static const Color backgroundColor = Color(0XFF71BAD1);
  static const Color buttonColor = Color(0xFF888888);
  static const Color submitButtonColor = Color(0xFFFF6347);
  static const Color textFieldColor = Color(0xFFDDEEF9);
  static const Color borderColor = Color(0xFFC3E8FF);
  static const Color hintTextColor = Color(0xFF9E9E9E);
  static const Color warningTextColor = Color(0XFF3A3A3A);
  static const String fontFamily = "Cairo";
  static const double horizontalPadding = 20.0;
  static const double spacingSmall = 20.0;
  static const double spacingMedium = 40.0;
  static const double logoSize = 60.0;
  static const double logoTextSize = 80.0;
  static const double titleFontSize = 24.0;
  static const double buttonFontSize = 18.0;
  static const double textFieldFontSize = 14.0;
  static const double warningFontSize = 14.0;

  // Variables to store latitude and longitude
  double? latitude;
  double? longitude;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: spacingSmall),
              _buildAppLogo(),
              SizedBox(height: spacingSmall),
              _buildTitle(),
              SizedBox(height: spacingSmall),
              _buildGetLocationButton(context),
              SizedBox(height: spacingSmall),
              _buildAdditionalInfoTitle(),
              SizedBox(height: spacingSmall),
              _buildCityField(),
              SizedBox(height: spacingSmall),
              _buildAreaField(),
              SizedBox(height: spacingSmall),
              _buildNeighborhoodField(),
              SizedBox(height: spacingSmall),
              _buildDetailedLocationField(),
              SizedBox(height: spacingSmall),
              _buildSubmitButton(context),
              SizedBox(height: spacingMedium),
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
          width: logoSize,
          height: logoSize,
        ),
        Spacer(),
        Image.asset(
          'assets/logoText.png',
          width: logoTextSize,
          height: logoTextSize,
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return Text(
      'قم بتحديد الموقع بشكل تلقائي',
      style: TextStyle(
        color: Colors.black,
        fontFamily: fontFamily,
        fontSize: titleFontSize,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget _buildGetLocationButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        print("Get Location button pressed!");

        // Check if location services are enabled
        bool isLocationServiceEnabled =
            await Geolocator.isLocationServiceEnabled();
        if (!isLocationServiceEnabled) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Please enable location services.')),
          );
          return;
        }

        // Check and request location permissions
        LocationPermission permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Location permissions are denied.')),
            );
            return;
          }
        }

        if (permission == LocationPermission.deniedForever) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                    'Location permissions are permanently denied. Please enable them in app settings.')),
          );
          return;
        }

        // Fetch the current location
        try {
          Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high,
          );

          // Store latitude and longitude
          latitude = position.latitude;
          longitude = position.longitude;

          // Print the location
          print("Latitude: $latitude, Longitude: $longitude");

          // Show the location to the user (optional)
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Location: $latitude, $longitude')),
          );
        } catch (e) {
          print("Error getting location: $e");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to get location.')),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 120),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        'تحديد الموقع',
        style: TextStyle(
          color: Colors.white,
          fontFamily: fontFamily,
          fontSize: buttonFontSize,
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
        fontFamily: fontFamily,
        fontSize: titleFontSize,
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
        color: textFieldColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: borderColor,
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
          hintStyle: TextStyle(color: hintTextColor),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.black,
          fontFamily: fontFamily,
          fontSize: textFieldFontSize,
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
        color: textFieldColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: borderColor,
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
          hintStyle: TextStyle(color: hintTextColor),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.black,
          fontFamily: fontFamily,
          fontSize: textFieldFontSize,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Print latitude and longitude when the submit button is pressed
        if (latitude != null && longitude != null) {
          print("Latitude: $latitude, Longitude: $longitude");
        } else {
          print("Location not fetched yet.");
        }

        // Navigate to the next screen
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => UpoladPhoto(),
          ),
        );
        print("Submit button pressed!");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: submitButtonColor,
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
          fontFamily: fontFamily,
          fontSize: buttonFontSize,
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
        color: warningTextColor,
        fontFamily: fontFamily,
        fontSize: warningFontSize,
        fontWeight: FontWeight.normal,
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
              fontFamily: fontFamily,
              fontSize: warningFontSize,
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
