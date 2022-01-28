import 'package:flutter/material.dart';
import 'package:tz_auth/screens/auth_email/components/otp.dart';
import 'package:tz_auth/widgets/custom_button.dart';
import 'package:tz_auth/widgets/custom_text_field.dart';

class AuthEmail extends StatefulWidget {
  const AuthEmail({Key? key}) : super(key: key);

  @override
  _AuthEmailState createState() => _AuthEmailState();
}

class _AuthEmailState extends State<AuthEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Column(
              children: [
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/email.png',
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Вход по Почте',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      CustomTextField(
                        icon: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 32,
                        ),
                        hintText: "Почта",
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      CustomButton(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Otp()));
                          },
                          buttonText: "Выслать Код")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
