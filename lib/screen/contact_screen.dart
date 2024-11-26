import 'package:demo/model/user.dart';
import 'package:demo/screen/user_detail_screen.dart';
import 'package:flutter/material.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<UserModel> data = [
    UserModel(
        name: "Panhavorn",
        email: "Email@gmail.com",
        avatar:
            'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=3220&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    UserModel(
        name: "Alice Johnson",
        email: "alice.johnson@example.com",
        avatar:
            'https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?q=80&w=2000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    UserModel(
        name: "Bob Smith",
        email: "bob.smith@example.com",
        avatar:
            'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?q=80&w=1856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
  ];

  List<UserModel> users = [];

  Tween<double> _scale = Tween<double>(begin: 0, end: 1);
  void _startAnimation() {
    data.forEach(
      (element) {
        int index = data.indexOf(element);

        users.add(element);
        _listKey.currentState
            ?.insertItem(index, duration: const Duration(milliseconds: 300));
      },
    );
  }

  void _navigation({required BuildContext ctx, required Widget screen}) {
    Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAnimation();
    });
  }

  Widget _buildUserTile(UserModel users, Animation<double> animation) {
    return ScaleTransition(
      scale: animation.drive(_scale),
      // position: animation.drive(_offset),
      child: Material(
        type: MaterialType.transparency,
        child: ListTile(
          key: UniqueKey(),
          contentPadding: const EdgeInsets.all(10),
          onTap: () {
            _navigation(ctx: context, screen: UserDetailScreen(users: users));
          },
          isThreeLine: true,
          enabled: true,
          horizontalTitleGap: 20,
          tileColor: Color.fromARGB(255, 255, 241, 199),
          hoverColor: const Color.fromARGB(96, 228, 194, 23),
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: 'user-${users.email}',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    users.avatar,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(users.name),
            ],
          ),
          subtitle: Text(users.email),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AnimatedList(
        key: _listKey,
        initialItemCount: users.length,
        itemBuilder: (context, index, animation) {
          return _buildUserTile(users[index], animation);
        },
      )),
    );
  }
}
