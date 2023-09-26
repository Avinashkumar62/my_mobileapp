import 'package:flutter/material.dart';
import 'package:my_mobileapp/main.dart';
import 'package:provider/provider.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        actions: [
          if (!authState.isAuthenticated)
            ElevatedButton(
              onPressed: () {
                // Then navigate back to the login page

                Navigator.pushNamed(context, '/');
              },
              child: const Text("logout"),
            ),
        ],
      ),
      body: ListView.builder(
        itemCount: authState.users?.length ?? 0,
        itemBuilder: (context, index) {
          final user = authState.users?[index];
          return ListTile(
            title: Text("${user!.firstName} ${user.lastName}"),
            subtitle: Text(user.username),
          );
        },
      ),
    );
  }
}
