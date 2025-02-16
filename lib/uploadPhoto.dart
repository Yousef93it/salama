import 'package:flutter/material.dart';
import 'package:salama/endProcess.dart';

class UpoladPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF71BAD1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              buildAppBar(),
              // _buildAppLogo(),
              SizedBox(height: 20),
              headerText(),
              SizedBox(height: 20),
              _buildWarningHeaderText(),
              SizedBox(height: 20),
              _UploadPhotoButton(context),
              SizedBox(height: 260),
              _buildWarningSaveText(),
              SizedBox(height: 20),
              _buildSubmitButton(context),
              SizedBox(height: 40),
              _buildWarningText(),
              Spacer(),
              //_buildBackButton(context),
            ],
          ),
        ),
      ),
    );
  }
//.

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

  Widget _buildWarningHeaderText() {
    return Text(
      'إرفاق صور لمخلفات الحرب يُعتبر جزءًا أساسيًا من العملية، حيث يُسهم بشكل فعّال في تقييم مستوى الخطورة وتحديد الإجراءات اللازمة للتعامل معها بشكل دقيق وفعّال.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0XFF3A3A3A),
        fontFamily: "Cairo",
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget _buildWarningSaveText() {
    return Text(
      'أنت على بُعد خطوة واحدة من إنقاذ أرواح الناس. اضغط على تأكيد لحفظ المعلومات ومشاركتها."',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0XFF3A3A3A),
        fontFamily: "Cairo",
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget _UploadPhotoButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Upload Photo button pressed!");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF888888),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 120),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        'ارفاق صورة',
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Cairo",
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget headerText() {
    return Text(
      'قم بارفاق صورة لموقع الخطر',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Cairo",
        fontSize: 24,
        fontWeight: FontWeight.normal,
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

  Widget _buildSubmitButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EndProcess(),
          ),
        );
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
