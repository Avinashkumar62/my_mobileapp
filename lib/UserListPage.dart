import 'package:flutter/material.dart';

void main() {
  runApp(const UserListPage());
}

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              // Perform logout logic here

              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        // Display a list of registered users here

        child: Text('User List Page'),
      ),
    );
  }
}
