import 'package:flutter/material.dart';

void main() => runApp(LogIn());

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                _buildHeader(),
                SizedBox(height: 30),
                _buildWelcomeText(),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الهاتف او البريد الالكتروني',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                _buildTextField('رقم الهاتف او البريد الالكتروني',
                    TextInputType.emailAddress, TextAlign.right),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'كلمة المرور',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                _buildTextField('كلمة المرور', TextInputType.visiblePassword,
                    TextAlign.right,
                    isPassword: true),
                SizedBox(height: 100),
                _buildSignUpButton(),
                SizedBox(height: 200),
                _buildSocialLoginText(),
                _buildSocialButtons(),
                // Add other widgets here
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(
            top: 10.0), // Adjust the top padding as needed
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 100, // Adjust the width as needed
              height: 100, // Adjust the height as needed
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'سلامة',
                  style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF87CEEB),
                  ),
                  textAlign: TextAlign.right,
                ),
                Text(
                  'معا نحو وطن آمن',
                  style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 14,
                    color: Color(0xFF87CEEB),
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Align(
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'أهلاً بك في تطبيق سلامة',
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0XFF67697A),
            ),
          ),
          Text(
            'ساهم معنا في حماية مجتمعنا من مخلفات الحرب عبر الإبلاغ عنها',
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 14,
              color: Color(0XFF67697A),
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
      String hintText, TextInputType inputType, TextAlign textAlign,
      {bool isPassword = false}) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isPassword,
      textAlign: textAlign,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Color(0xFFF0F0F0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xFF87CEEB), width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        suffixIcon:
            isPassword ? Icon(Icons.visibility_off, color: Colors.grey) : null,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
    );
  }

  Widget _buildSignUpButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print("Sign Up button pressed!");
          if (_formKey.currentState?.validate() ?? false) {
            // Add your action here
            print("تسجيل button clicked!");
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF87CEEB),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 3,
        ),
        child: Text(
          'تسجيل الدخول',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

Widget _buildSocialButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          // Add Facebook login action here
          print("Facebook login clicked!");
        },
        child: _buildSocialButton(
            'Facebook',
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 0, 0, 0),
            'assets/facebook.png'), // Use an appropriate IconData
      ),
      SizedBox(width: 20),
      GestureDetector(
        onTap: () {
          // Add Google login action here
          print("Google login clicked!");
        },
        child: _buildSocialButton('Google', Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 0, 0, 0), "assets/google.png"),
      ),
    ],
  );
}

Widget _buildSocialButton(
    String text, Color color, Color fontColor, String iconPath) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(iconPath, height: 18, width: 18),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(color: fontColor),
        ),
      ],
    ),
  );
}

Widget _buildSocialLoginText() {
  return Center(
    child: Text(
      'أو قم بتسجيل الدخول باستخدام',
      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
    ),
  );
}
