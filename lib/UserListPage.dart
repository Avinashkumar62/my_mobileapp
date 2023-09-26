import 'package:flutter/material.dart';
import 'package:my_mobileapp/main.dart';
import 'package:provider/provider.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace this with your logic to fetch and display the list of users
    final authState = Provider.of<AuthState>(context, listen: true);
    if (authState.users != null) {
    } else {}

    // var isAuthenticated;
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        actions: <Widget>[
          // if (isAuthenticated) // Show logout button if authenticated

          ElevatedButton(
            onPressed: () {
              // Perform logout logic here (e.g., clear authentication token)

              // Then navigate back to the login page

              Navigator.pushNamed(context, '/');
            },
            child: const Text("logout"),
          ),
        ],
      ),
    );
  }
}
