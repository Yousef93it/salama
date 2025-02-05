import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:salama/LogIn.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

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
                _buildHeader(),
                _buildWelcomeText(),
                _buildNameFields(),
                _buildInputField(
                    'البريد الإلكتروني', TextInputType.emailAddress),
                _buildInputField('رقم الهاتف', TextInputType.phone),
                _buildInputField('كلمة المرور', TextInputType.visiblePassword,
                    isPassword: true),
                _buildSignUpButton(),
                _buildSocialLoginText(),
                _buildSocialButtons(),
                _buildNewAccount(),
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
        padding: const EdgeInsets.only(top: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 50,
              height: 50,
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
                ),
                Text(
                  'معًا نحو وطن آمن',
                  style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 14,
                    color: Color(0xFF87CEEB),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _headerTextStyle(double fontSize) {
    return TextStyle(
      fontFamily: "Cairo",
      fontSize: fontSize,
      color: Color(0xFF87CEEB),
      fontWeight: fontSize == 28 ? FontWeight.bold : FontWeight.normal,
    );
  }

  Widget _buildWelcomeText() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'أهلاً بك في تطبيق سلامة',
            style: _welcomeTextStyle(28),
            textAlign: TextAlign.right,
          ),
          Text(
            'ساهم معنا في حماية مجتمعنا من مخلفات الحرب عبر الإبلاغ عنها',
            style: _welcomeTextStyle(14),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }

  TextStyle _welcomeTextStyle(double fontSize) {
    return TextStyle(
      fontFamily: "Cairo",
      fontSize: fontSize,
      color: Color(0XFF67697A),
      fontWeight: fontSize == 28 ? FontWeight.bold : FontWeight.normal,
    );
  }

  Widget _buildNameFields() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        children: [
          _buildNameField('الاسم الأول'),
          SizedBox(width: 15),
          _buildNameField('اسم العائلة'),
        ],
      ),
    );
  }

  Widget _buildNameField(String label) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(label, style: _labelTextStyle()),
          SizedBox(height: 10),
          _buildTextField(label, TextInputType.text),
        ],
      ),
    );
  }

  Widget _buildInputField(String label, TextInputType inputType,
      {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(label, style: _labelTextStyle()),
          SizedBox(height: 10),
          _buildTextField(label, inputType, isPassword: isPassword),
        ],
      ),
    );
  }

  TextStyle _labelTextStyle() {
    return TextStyle(
      fontFamily: "Cairo",
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildTextField(String hintText, TextInputType inputType,
      {bool isPassword = false}) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isPassword,
      textAlign: TextAlign.right,
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
      validator: (value) => value?.isEmpty ?? true ? 'هذا الحقل مطلوب' : null,
    );
  }

  Widget _buildNewAccount() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'لديك حساب بالفعل؟ ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  TextSpan(
                    text: 'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors
                          .blue, // Change color to blue to indicate a link
                      decoration:
                          TextDecoration.underline, // Underline the text
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LogInApp(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Center(
        child: ElevatedButton(
          onPressed: _onSignUpPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF87CEEB),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 3,
          ),
          child: Text('أنشاء حساب',
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }

  void _onSignUpPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      print("تسجيل button clicked!");
    }
  }

  Widget _buildSocialLoginText() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Expanded(child: Divider(color: Color(0xFFF3F3FA))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text('أو قم بتسجيل الدخول باستخدام',
                style: TextStyle(fontSize: 14, color: Colors.grey[700])),
          ),
          Expanded(child: Divider(color: Color(0xFFF3F3FA))),
        ],
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSocialButton(
              'Facebook', 'assets/facebook.png', _onFacebookLogin),
          SizedBox(width: 20),
          _buildSocialButton('Google', 'assets/google.png', _onGoogleLogin),
        ],
      ),
    );
  }

  Widget _buildSocialButton(String text, String iconPath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(iconPath, height: 18, width: 18),
            SizedBox(width: 5),
            Text(text, style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }

  void _onFacebookLogin() {
    print("Facebook login clicked!");
  }

  void _onGoogleLogin() {
    print("Google login clicked!");
  }

  Widget _buildLoginTextButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Center(
        child: TextButton(
          onPressed: _onLoginPressed,
          child: Text('لديك حساب بالفعل؟ تسجيل الدخول',
              style: TextStyle(color: Colors.grey[700])),
        ),
      ),
    );
  }

  void _onLoginPressed() {
    print("Navigate to login page!");
  }
}
