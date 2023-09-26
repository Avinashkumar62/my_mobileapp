import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Function to validate the username and password

  bool validateCredentials(String username, String password) {
    // Add your validation logic here

    // For example, you can check if the username and password match your criteria.

    // Return true if valid, false otherwise.

    return username == 'valid_username' && password == 'valid_password';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Username field with Box decoration

              Container(
                width: 300.0, // The width of UserName button

                padding: const EdgeInsets.symmetric(horizontal: 15.0),

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(5.0),
                ),

                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'UserName',
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 16.0),

              // Password field with Box decoration

              Container(
                width: 300.0, // The width of password button

                padding: const EdgeInsets.symmetric(horizontal: 15.0),

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

              const SizedBox(height: 45.0),

              // Login button in a Box

              SizedBox(
                width: 120.0, // The width of login button

                child: ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                    final username = usernameController.text;
                    final password = passwordController.text;

                    // Validate the credentials

                    if (validateCredentials(username, password)) {
                      // If valid, navigate to the next screen (replace 'NextScreen' with your actual screen name)

                      Navigator.pushReplacementNamed(context, "/userlist");
                    } else {
                      // If not valid, display an error message

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Invalid username or password.'),
                        ),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ),

              const SizedBox(height: 15.0),

              // Sign Up button in a Box

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                child: const Text("Don't Have Account - SignUp"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
