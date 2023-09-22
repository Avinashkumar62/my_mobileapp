import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
