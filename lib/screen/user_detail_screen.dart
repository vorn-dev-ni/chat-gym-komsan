import 'package:demo/model/user.dart';
import 'package:flutter/material.dart';

class UserDetailScreen extends StatefulWidget {
  final UserModel users;
  const UserDetailScreen({super.key, required this.users});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Hero(
            tag: 'user-${widget.users.email}',
            child: Image.network(
              widget.users.avatar,
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: 400,
            ),
          )
        ],
      )),
    );
  }
}
