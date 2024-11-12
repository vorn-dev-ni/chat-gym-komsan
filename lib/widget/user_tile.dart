import 'package:demo/model/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
    required this.users,
  });

  final UserModel users;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: UniqueKey(),
      title: Text('${users.email}'),
      subtitle: Text(users.email),
    );
  }
}
