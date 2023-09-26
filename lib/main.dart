import 'package:flutter/material.dart';
import 'package:my_mobileapp/LoginPage.dart';
import 'package:my_mobileapp/SignupPage.dart';
import 'package:my_mobileapp/UserListPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AuthState>(
      create: (context) => AuthState(isAuthenticated: false),
      child: MyApp(),
    ),
  );
}

class User {
  String username;

  String password;

  String email;

  String firstName;

  String lastName;
  String profilePicture;

  User({
    required this.username,
    required this.password,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.profilePicture,
  });
}

class AuthState with ChangeNotifier {
  bool isAuthenticated;
  List<User>? users = [
    User(
        username: "",
        password: "",
        email: "",
        firstName: "",
        lastName: "",
        profilePicture: ""),
    User(
        username: "",
        password: "",
        email: "",
        firstName: "",
        lastName: "",
        profilePicture: "")
  ];
  AuthState({required this.isAuthenticated});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final state = Provider.of<AuthState>(context);
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/userlist': (context) => UserListPage(),
      },
    );
  }
}
