import 'package:flutter/material.dart';
import 'package:testflutterproject/soon.dart';
import 'package:testflutterproject/location.dart';

class NewIssue extends StatefulWidget {
  @override
  _NewIssueState createState() => _NewIssueState();
}

class _NewIssueState extends State<NewIssue> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<String> WarWasteType = [
    'حدد نوع المخلفات',
    'Option 1',
    'Option 2',
    'Option 3'
  ];
  // Variable to store the selected value, initially set to the first option
  String selectedValueOfWarWaste = 'حدد نوع المخلفات';

  List<String> WarWasteDanger = [
    'مستوى الخطورة',
    'Option 1',
    'Option 2',
    'Option 3'
  ];

  // Variable to store the selected value, initially set to the first option
  String selectedValueOfWarWasteDanger = 'مستوى الخطورة';

  List<String> WarWasteZone = [
    'القرب من السكان',
    'Option 1',
    'Option 2',
    'Option 3'
  ];
  String selectedValueOfWarWasteZone = 'القرب من السكان';

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
              Text(
                'تفاصيل الخطر المحدد',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Cairo",
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0XFFDDEEF9), // Background color
                  borderRadius: BorderRadius.circular(2), // Rounded corners
                  border: Border.all(
                      color: Color(0XFFC3E8FF),
                      width: 1), // Border color and width
                ),
                child: DropdownButtonFormField<String>(
                  value: selectedValueOfWarWaste,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 10), // Padding inside the dropdown
                    border: InputBorder.none, // Remove the default border
                  ),
                  items: WarWasteType.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Align(
                        alignment:
                            Alignment.centerRight, // Align text to the right
                        child: Text(
                          value,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Cairo",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValueOfWarWaste = newValue!;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down,
                      textDirection: TextDirection.ltr),
                  isExpanded: true,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0XFFDDEEF9), // Background color
                  borderRadius: BorderRadius.circular(2), // Rounded corners
                  border: Border.all(
                      color: Color(0XFFC3E8FF),
                      width: 1), // Border color and width
                ),
                child: DropdownButtonFormField<String>(
                  value: selectedValueOfWarWasteDanger,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 10), // Padding inside the dropdown
                    border: InputBorder.none, // Remove the default border
                  ),
                  items: WarWasteDanger.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Align(
                        alignment:
                            Alignment.centerRight, // Align text to the right
                        child: Text(
                          value,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Cairo",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValueOfWarWasteDanger = newValue!;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down,
                      textDirection: TextDirection.ltr),
                  isExpanded: true,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0XFFDDEEF9), // Background color
                  borderRadius: BorderRadius.circular(2), // Rounded corners
                  border: Border.all(
                      color: Color(0XFFC3E8FF),
                      width: 1), // Border color and width
                ),
                child: DropdownButtonFormField<String>(
                  value: selectedValueOfWarWasteZone,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 10), // Padding inside the dropdown
                    border: InputBorder.none, // Remove the default border
                  ),
                  items: WarWasteZone.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Align(
                        alignment:
                            Alignment.centerRight, // Align text to the right
                        child: Text(
                          value,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Cairo",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValueOfWarWasteZone = newValue!;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down,
                      textDirection: TextDirection.ltr),
                  isExpanded: true,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height:
                    180, // Keeps enough height to accommodate multiple lines
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
                    hintText: 'الوصف الإضافي',
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
              _WarWastDataSubmit(context),
              SizedBox(height: 150),
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _backButton(context),
                  ],
                ),
              ),
            ],
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
          SizedBox(width: 8),
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

  Widget _nextButton(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_left, color: Colors.white, size: 50),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(width: 8),
          Text(
            'التالي',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Cairo",
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _WarWastDataSubmit(BuildContext context) {
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
