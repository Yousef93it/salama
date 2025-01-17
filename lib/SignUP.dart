// import 'package:flutter/material.dart';

// class SignUpPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 50),
//               Align(
//                 alignment: Alignment.topRight,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                       'سلامة',
//                       style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF87CEEB),
//                       ),
//                     ),
//                     Text(
//                       'أمانك نحو وطن آمن',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Color(0xFF87CEEB),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 30),
//               Center(
//                 child: Column(
//                   children: [
//                     Text(
//                       'أهلاً بك في تطبيق سلامة',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'نساعد جميعاً في حماية سلامتنا من مخالفات العرب عبر التطبيق لدينا',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.grey[700],

//                         //textAlign: TextAlign.center,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 30),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text(
//                           'الاسم الأول',
//                           textAlign: TextAlign.right,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         _buildTextField(
//                             'الاسم الأول', TextInputType.text, TextAlign.right),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text(
//                           'اسم العائلة',
//                           textAlign: TextAlign.right,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         _buildTextField(
//                             'اسم العائلة', TextInputType.text, TextAlign.right),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 15),
//               _buildTextField('البريد الإلكتروني', TextInputType.emailAddress,
//                   TextAlign.right),
//               SizedBox(height: 15),
//               _buildTextField(
//                   'رقم الهاتف', TextInputType.phone, TextAlign.right),
//               SizedBox(height: 15),
//               _buildTextField(
//                   'كلمة المرور', TextInputType.visiblePassword, TextAlign.right,
//                   isPassword: true),
//               SizedBox(height: 25),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Add your action here

//                     print("تسجيل button clicked!");
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF87CEEB),
//                     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     elevation: 3,
//                   ),
//                   child: Text(
//                     'تسجيل',
//                     style: TextStyle(fontSize: 18, color: Colors.white),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Center(
//                 child: Text(
//                   'أو سجل الدخول باستخدام',
//                   style: TextStyle(fontSize: 14, color: Colors.grey[700]),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       //i need to dd feacbook login action here
//                       print("Facebook login clicked!");
//                     },
//                     child: _buildSocialButton(
//                       'Facebook',
//                       Color(0xFF87CEEB),
//                     ),
//                   ),
//                   SizedBox(width: 20),
//                   GestureDetector(
//                     onTap: () {
//                       //  i need to dd Google login action here
//                       print("Google login clicked!");
//                     },
//                     child: _buildSocialButton(
//                       'Google',
//                       Color(0xFF87CEEB),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 30),
//               Center(
//                 child: TextButton(
//                   onPressed: () {
//                     // Add navigation to login page here
//                     print("Navigate to login page!");
//                   },
//                   child: Text(
//                     'لديك حساب بالفعل؟ تسجيل الدخول',
//                     style: TextStyle(color: Colors.grey[700]),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(
//       String hintText, TextInputType inputType, TextAlign textAlign,
//       {bool isPassword = false}) {
//     return TextField(
//       keyboardType: inputType,
//       obscureText: isPassword,
//       textAlign: textAlign,
//       decoration: InputDecoration(
//         hintText: hintText,
//         filled: true,
//         fillColor: Color(0xFFF0F0F0),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide.none,
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide(color: Color(0xFF87CEEB), width: 2),
//         ),
//         contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//         suffixIcon:
//             isPassword ? Icon(Icons.visibility_off, color: Colors.grey) : null,
//       ),
//     );
//   }

//   Widget _buildSocialButton(String text, Color color) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(Icons.circle, size: 18, color: Colors.white),
//           SizedBox(width: 5),
//           Text(
//             text,
//             style: TextStyle(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

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
                SizedBox(height: 50),
                _buildHeader(),
                SizedBox(height: 30),
                _buildWelcomeText(),
                SizedBox(height: 30),
                _buildNameFields(),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'البريد الإلكتروني',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                _buildTextField('البريد الإلكتروني', TextInputType.emailAddress,
                    TextAlign.right),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الهاتف',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                _buildTextField(
                    'رقم الهاتف', TextInputType.phone, TextAlign.right),
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
                _buildTextField('كلمة المرور', TextInputType.visiblePassword,
                    TextAlign.right,
                    isPassword: true),
                SizedBox(height: 25),
                _buildSignUpButton(),
                SizedBox(height: 20),
                _buildSocialLoginText(),
                SizedBox(height: 15),
                _buildSocialButtons(),
                SizedBox(height: 30),
                _buildLoginTextButton(),
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

  Widget _buildNameFields() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'اسم العائلة',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: "Cairo",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildTextField(
                  'اسم العائلة', TextInputType.text, TextAlign.right),
            ],
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'الاسم الأول',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: "Cairo",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildTextField(
                  'الاسم الأول', TextInputType.text, TextAlign.right),
            ],
          ),
        ),
      ],
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
          print("Sign Up button pressed!"); // Added print statement
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
          'تسجيل',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSocialLoginText() {
    return Center(
      child: Text(
        'أو سجل الدخول باستخدام',
        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
      ),
    );
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
          child: _buildSocialButton('Facebook', Color(0xFF87CEEB)),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            // Add Google login action here
            print("Google login clicked!");
          },
          child: _buildSocialButton('Google', Color(0xFF87CEEB)),
        ),
      ],
    );
  }

  Widget _buildSocialButton(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.circle, size: 18, color: Colors.white),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginTextButton() {
    return Center(
      child: TextButton(
        onPressed: () {
          // Add navigation to login page here
          print("Navigate to login page!");
        },
        child: Text(
          'لديك حساب بالفعل؟ تسجيل الدخول',
          style: TextStyle(color: Colors.grey[700]),
        ),
      ),
    );
  }
}
