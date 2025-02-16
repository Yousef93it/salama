import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاعدادات'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _buildSettingsItem(context, Icons.person_2_outlined, 'الحساب',
                AccountSettingsPage()),
            _buildSettingsItem(context, Icons.lock_outlined, 'كلمة المرور',
                PasswordSettingsPage()),
            _buildSettingsItem(context, Icons.notifications_outlined,
                'التنبيهات', NotificationSettingsPage()),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
      BuildContext context, IconData icon, String title, Widget page) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        // Add container for styling
        padding: EdgeInsets.symmetric(vertical: 16.0),
        decoration: BoxDecoration(),
        child: Row(
          children: <Widget>[
            Icon(icon, color: Color(0XFF1F1F1F)),
            SizedBox(width: 16.0),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0XFF3A3A3A),
                  fontFamily: "Cairo",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey[600]),
          ],
        ),
      ),
    );
  }
}

class AccountSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account Settings')),
      body: Center(child: Text('Account Settings Content')),
    );
  }
}

class PasswordSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Password Settings')),
      body: Center(child: Text('Password Settings Content')),
    );
  }
}

class NotificationSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Settings')),
      body: Center(child: Text('Notification Settings Content')),
    );
  }
}
