import 'package:flutter/material.dart';
import '../models/user.dart';
import 'user_item.dart';

class UserList extends StatelessWidget {
  final List<User> users;

  UserList({required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return UserItem(user: users[index]);
      },
    );
  }
}