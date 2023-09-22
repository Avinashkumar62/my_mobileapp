import 'package:flutter/material.dart';
import 'package:my_mobileapp/LoginPage.dart';
import 'package:my_mobileapp/SignupPage.dart';
import 'package:my_mobileapp/UserListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/userlist': (context) => const UserListPage(),
      },
    );
  }
}
