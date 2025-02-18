import 'package:flutter/material.dart';
import 'package:salama/newIssue.dart';
// import 'package:salama/soon.dart';
import 'package:salama/Home.dart';

class ReportIssue extends StatefulWidget {
  @override
  _ReportIssueState createState() => _ReportIssueState();
}

class _ReportIssueState extends State<ReportIssue> {
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // int _currentPage = 0;
  // final PageController _pageController = PageController();

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
              SizedBox(height: 25),
              buildAppBar(),
              SizedBox(height: 50),
              caseRectangle(),
              SizedBox(height: 20),
              proccesRectangle(),
              SizedBox(height: 20),
              doneRectangle(),
              // _buildImageCarousel(),
              SizedBox(height: 50),
              _buildReportButton(context),
              SizedBox(height: 20),
              // _buildDataButton(context),
              SizedBox(height: 20),
              //_buildMoreButton(context),
              Spacer(),
              //_buildBackButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget doneRectangle() {
    return Container(
      width: 300,
      height: 125,
      decoration: BoxDecoration(
        color: Color(0XFF00A300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'عدد الحالات التي تمت معالجتها ',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Cairo",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'حالة',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  '2000',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget caseRectangle() {
    return Container(
      width: 300,
      height: 125,
      decoration: BoxDecoration(
        color: Color(0XFF003366),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'عدد الحالات الإجمالي',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Cairo",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'حالة',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  '3500',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget proccesRectangle() {
    return Container(
      width: 300,
      height: 125,
      decoration: BoxDecoration(
        color: Color(0XFF888888),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'عدد الحالات بانتظار المعالجة ',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Cairo",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'حالة',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  '1500',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.zero,
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

  // Widget _buildAppLogo() {
  //   return Row(
  //     children: [
  //       Image.asset(
  //         'assets/logo.png',
  //         width: 60,
  //         height: 60,
  //       ),
  //       Spacer(),
  //       Image.asset(
  //         'assets/logoText.png',
  //         width: 80,
  //         height: 80,
  //       ),
  //     ],
  //   );
  // }

  // Widget _buildImageCarousel() {
  //   return Container(
  //     width: double.infinity,
  //     height: 200,
  //     child: Stack(
  //       children: [
  //         PageView(
  //           controller: _pageController,
  //           onPageChanged: (int page) {
  //             setState(() {
  //               _currentPage = page;
  //             });
  //           },
  //           children: [
  //             _buildCarouselImage('assets/1.jpeg'),
  //             _buildCarouselImage('assets/2.jpeg'),
  //             _buildCarouselImage('assets/3.jpeg'),
  //           ],
  //         ),
  //         Positioned(
  //           bottom: 10,
  //           left: 0,
  //           right: 0,
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: List.generate(3, (index) {
  //               return AnimatedContainer(
  //                 duration: Duration(milliseconds: 300),
  //                 margin: EdgeInsets.symmetric(horizontal: 3),
  //                 width: _currentPage == index ? 12 : 8,
  //                 height: _currentPage == index ? 12 : 8,
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.circle,
  //                   color: _currentPage == index
  //                       ? Colors.white
  //                       : Colors.white.withOpacity(0.5),
  //                 ),
  //               );
  //             }),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildCarouselImage(String imagePath) {
  //   return Padding(
  //     padding: const EdgeInsets.all(6.0),
  //     child: ClipRRect(
  //       borderRadius: BorderRadius.circular(15),
  //       child: Image.asset(
  //         imagePath,
  //         fit: BoxFit.cover,
  //       ),
  //     ),
  //   );
  // }

  Widget _buildReportButton(BuildContext context) {
    return _buildButton(
      context,
      text: 'الإبلاغ عن خطر جديد',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewIssue()),
        );
      },
    );
  }

  // Widget _buildDataButton(BuildContext context) {
  //   return _buildButton(
  //     context,
  //     text: 'استعرض التقارير',
  //     onPressed: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => Soon()),
  //       );
  //     },
  //   );
  // }

  // Widget _buildMoreButton(BuildContext context) {
  //   return _buildButton(
  //     context,
  //     text: 'تعرف على المزيد',
  //     onPressed: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => Soon()),
  //       );
  //     },
  //   );
  // }

  Widget _buildButton(BuildContext context,
      {required String text, required VoidCallback onPressed}) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFF6347),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 3,
        ),
        child: Text(
          text,
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
          SizedBox(width: 8),
          IconButton(
            icon: Icon(Icons.arrow_right, color: Colors.white, size: 50),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
