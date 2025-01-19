import 'package:flutter/material.dart';
import 'package:testflutterproject/newIssue.dart';
import 'package:testflutterproject/soon.dart';

class ReportIssue extends StatefulWidget {
  @override
  _ReportIssueState createState() => _ReportIssueState();
}

class _ReportIssueState extends State<ReportIssue> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _currentPage = 0;
  final PageController _pageController = PageController();

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
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(width: 220),
                  Image.asset(
                    'assets/logoText.png',
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 200,
                child: Stack(
                  children: [
                    PageView(
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/1.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/2.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/3.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            width: _currentPage == index ? 12 : 8,
                            height: _currentPage == index ? 12 : 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPage == index
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              _ReportButton(context),
              SizedBox(height: 20),
              _Data(context),
              SizedBox(height: 20),
              _More(context),
              SizedBox(height: 185),
              _backButton(context),
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewIssue()),
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Soon()),
          );
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Soon()),
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
