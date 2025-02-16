import 'package:flutter/material.dart';
import 'package:salama/ReportIssue.dart';

class EndProcess extends StatelessWidget {
  // Constants for colors, fonts, and sizes
  static const Color backgroundColor = Color(0XFF32CD32);
  static const Color warningTextColor = Colors.white;
  static const Color infoTextColor = Color(0XFF3A3A3A);
  static const Color buttonColor = Color(0xFFFF6347);
  static const String fontFamily = "Cairo";
  static const double logoSize = 60.0;
  static const double logoTextSize = 80.0;
  static const double checkMarkSize = 200.0;
  static const double warningTextSize = 24.0;
  static const double infoTextSize = 14.0;
  static const double buttonTextSize = 14.0;
  static const double horizontalPadding = 0.0;
  static const double spacingSmall = 20.0;
  static const double spacingMedium = 60.0;
  static const double spacingLarge = 80.0;

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
              buildAppBar(),
              SizedBox(height: spacingMedium),
              _buildCheckMark(),
              SizedBox(height: spacingSmall),
              _buildWarningText(),
              SizedBox(height: spacingSmall),
              _buildInfoText(),
              SizedBox(height: spacingLarge),
              _buildSubmitButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 0.0), // Adjust padding as needed
        child: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 50,
              height: 50,
            ),
            Spacer(),
            Image.asset(
              'assets/logoText.png',
              width: 100,
              height: 40,
            ),
          ],
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: Colors.white), // Change back button color to white
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

  Widget _buildCheckMark() {
    return Icon(
      Icons.check_circle,
      size: checkMarkSize,
      color: warningTextColor,
    );
  }

  Widget _buildWarningText() {
    return Text(
      'تمت إضافة الموقع بنجاح',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: warningTextColor,
        fontFamily: fontFamily,
        fontSize: warningTextSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildInfoText() {
    return Text(
      'شكرًا لك على مساعدتك في جعل مجتمعنا أكثر أمانًا. تم استلام معلوماتك بنجاح وسيتم مراجعتها من قبل الجهات المختصة. نقدر جهودك في الإبلاغ عن المخاطر!',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: infoTextColor,
        fontFamily: fontFamily,
        fontSize: infoTextSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ReportIssue(),
          ),
        );
        print("Submit button pressed!");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 90),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 3,
      ),
      child: Text(
        'الصفحة الرئيسية',
        style: TextStyle(
          color: warningTextColor,
          fontFamily: fontFamily,
          fontSize: buttonTextSize,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
