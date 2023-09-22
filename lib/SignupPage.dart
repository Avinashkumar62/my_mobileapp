import 'package:flutter/material.dart';

void main() {
  runApp(const SignupPage());
}


class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

void _signup(BuildContext context) {
  // Simulate registration process (replace with actual logic)

  // For this example, we'll consider registration as successful if all fields are filled.

  bool allFieldsFilled = true; // Check if all required fields are filled

  if (allFieldsFilled) {
    // Navigate to user list page if registration is successful

    Navigator.pushNamed(context, '/userlist');
    // ignore: dead_code
  } else {
    // Handle registration failure (e.g., show an error message)
  }
}

  @override
  Widget build(BuildContext context) {
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
