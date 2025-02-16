import 'package:flutter/material.dart';
import 'package:salama/LogIn.dart';
import 'package:salama/ReportIssue.dart';
import 'package:salama/settings.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF71BAD1),
      appBar: AppBar(
        backgroundColor: Color(0XFF71BAD1),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('user@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
              decoration: BoxDecoration(color: Color(0XFF71BAD1)),
            ),
            ListTile(
              title: Text(
                'الاعدادات',
                style: TextStyle(
                  color: Color(0XFF3A3A3A),
                  fontFamily: "Cairo",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'تسجيل الخروج',
                style: TextStyle(
                  color: Color(0XFF3A3A3A),
                  fontFamily: "Cairo",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogInPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLogo(),
            _buildAppTitle(),
            SizedBox(height: 100),
            _buildMotivationalText(),
            SizedBox(height: 20),
            _buildReportButton(context),
            SizedBox(height: 20),
            _buildSignOutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Image.asset(
      'assets/logo.png',
      width: 200,
      height: 200,
    );
  }

  Widget _buildAppTitle() {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(
        children: [
          Text(
            'سلامة',
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
            'معًا نحو وطن آمن',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Cairo",
              fontSize: 23,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMotivationalText() {
    return Text(
      'انت الآن على بعد خطوة واحدة من إنقاذ حياة الناس',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontFamily: "Cairo",
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildReportButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ReportIssue()),
        );
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
        'قم بالإبلاغ الآن',
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Cairo",
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildSignOutButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LogInPage()),
        );
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
    );
  }
}
