import 'package:flutter/material.dart';
import 'package:tz_auth/widgets/custom_button.dart';
import 'package:tz_auth/widgets/custom_text_field.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Привет!",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
                ),
                Text(
                  "выйти",
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontSize: 16),
                ),
              ],
            ),
            CustomTextField(
              hintText: "Имя",
            ),
            CustomTextField(
              hintText: "Teлефон",
            ),
            CustomTextField(
              hintText: "Почта",
            ),
            CustomButton(onTap: () {}, buttonText: "Сохранить")
          ],
        ),
      )),
    );
  }
}
