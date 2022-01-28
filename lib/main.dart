import 'package:flutter/material.dart';
import 'package:tz_auth/screens/auth_email/auth_email.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: AuthEmail());
  }
}
