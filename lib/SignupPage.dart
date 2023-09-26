import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_mobileapp/UserListPage.dart';
import 'package:my_mobileapp/main.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(SignupPage());
}

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);
  @override
  SignupWidget createState() => SignupWidget();
}

class SignupWidget extends State<SignupPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController profilePictureController =
      TextEditingController();
  User user = User(
      username: "",
      password: "",
      email: "",
      firstName: "",
      lastName: "",
      profilePicture: "");

  void _signup(BuildContext context) {
    final authState = Provider.of<AuthState>(context, listen: false);

    // For this example, we'll consider registration as successful if all fields are filled.
    user.profilePicture = "";
    print(user);
    print(user.username);
    bool allFieldsFilled = true; // Check if all required fields are filled

    if (allFieldsFilled) {
      authState.users
          ?.add(user); // Add the user to the list of users in AuthState
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const UserListPage(), // Navigate to UserListPage
        ),
      );
      // ignore: dead_code
    } else {
      // Handle registration failure (e.g., show an error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    // final authSate = Provider.of<AuthState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('Signup')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Username field in a Box

              Container(
                width: 300.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextFormField(
                  controller: usernameController,
                  onChanged: (value) {
                    user.username = value;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 16.0),

// Password field in a Box

              Container(
                width: 300.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextFormField(
                  controller: passwordController,
                  onChanged: (value) {
                    setState(() {
                      user.password = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),

              const SizedBox(height: 16.0),

// Email field in a Box

              Container(
                width: 300.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextFormField(
                  controller: emailController,
                  onChanged: (value) {
                    setState(() {
                      user.email = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 16.0),

// First Name field in a Box

              Container(
                width: 300.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextFormField(
                  controller: firstNameController,
                  onChanged: (value) {
                    setState(() {
                      user.firstName = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 16.0),

// Last Name field in a Box

              Container(
                width: 300.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextFormField(
                  controller: lastNameController,
                  onChanged: (value) {
                    setState(() {
                      user.lastName = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 16.0),

// Upload button in a Box

              SizedBox(
                width: 300.0,
                child: ElevatedButton(
                  onPressed: () {
                    // Implement image upload logic
                  },
                  child: const Text('Upload Profile Picture'),
                ),
              ),

              const SizedBox(height: 16.0),

              // Signup button in a Box

              SizedBox(
                width: 300.0,
                child: ElevatedButton(
                  onPressed: () {
                    _signup(context); // Call the signup function
                  },
                  child: const Text('Signup'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
