import 'package:flutter/material.dart';
import 'package:salama/location.dart';

class NewIssue extends StatefulWidget {
  @override
  _NewIssueState createState() => _NewIssueState();
}

class _NewIssueState extends State<NewIssue> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<String> warWasteType = [
    'حدد نوع المخلفات',
    'Option 1',
    'Option 2',
    'Option 3'
  ];
  String selectedValueOfWarWaste = 'حدد نوع المخلفات';

  List<String> warWasteDanger = [
    'مستوى الخطورة',
    'Option 1',
    'Option 2',
    'Option 3'
  ];
  String selectedValueOfWarWasteDanger = 'مستوى الخطورة';

  List<String> warWasteZone = [
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
              _buildAppLogo(),
              SizedBox(height: 20),
              _buildTitle(),
              SizedBox(height: 40),
              _buildDropdown(
                value: selectedValueOfWarWaste,
                items: warWasteType,
                onChanged: (newValue) {
                  setState(() {
                    selectedValueOfWarWaste = newValue!;
                  });
                },
              ),
              SizedBox(height: 20),
              _buildDropdown(
                value: selectedValueOfWarWasteDanger,
                items: warWasteDanger,
                onChanged: (newValue) {
                  setState(() {
                    selectedValueOfWarWasteDanger = newValue!;
                  });
                },
              ),
              SizedBox(height: 20),
              _buildDropdown(
                value: selectedValueOfWarWasteZone,
                items: warWasteZone,
                onChanged: (newValue) {
                  setState(() {
                    selectedValueOfWarWasteZone = newValue!;
                  });
                },
              ),
              SizedBox(height: 20),
              _buildDescriptionField(),
              SizedBox(height: 20),
              _buildSubmitButton(context),
              Spacer(),
              _buildWarningText(),
              SizedBox(height: 20),
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
      'تفاصيل الخطر المحدد',
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Cairo",
        fontSize: 24,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget _buildDropdown({
    required String value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0XFFDDEEF9),
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: Color(0XFFC3E8FF),
          width: 1,
        ),
      ),
      child: DropdownButtonFormField<String>(
        value: value,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: InputBorder.none,
        ),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Align(
              alignment: Alignment.centerRight,
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
        onChanged: onChanged,
        icon: Icon(Icons.arrow_drop_down, textDirection: TextDirection.ltr),
        isExpanded: true,
      ),
    );
  }

  Widget _buildDescriptionField() {
    return Container(
      width: 350,
      height: 180,
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
          hintText: 'الوصف الإضافي',
          hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.black,
          fontFamily: "Cairo",
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Location()),
          );
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
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
