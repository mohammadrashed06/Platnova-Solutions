import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/user_viewmodel.dart';
import '../widgets/user_list.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userViewModel = Provider.of<UserViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data'),
      ),
      body: Center(
        child: userViewModel.loading
            ? const CircularProgressIndicator()
            : userViewModel.error.isNotEmpty
            ? Text(userViewModel.error)
            : UserList(users: userViewModel.users),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userViewModel.fetchUsers();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}