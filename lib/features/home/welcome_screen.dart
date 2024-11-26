import 'package:demo/utils/constant/app_colors.dart';
import 'package:demo/utils/constant/string_text.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextStyle(),
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.maxFinite,
        color: AppColors.primaryDark,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              StringText.welcomeScreen,
              textAlign: TextAlign.center,
              style: TextStyle(),
            )
          ],
        ),
      )),
    );
  }
}
