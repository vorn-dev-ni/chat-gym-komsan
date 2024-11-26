import 'dart:io';

import 'package:demo/utils/flavor/config.dart';
import 'package:demo/model/user.dart';
import 'package:demo/screen/animated_screen.dart';
import 'package:demo/utils/constant/string_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<UserModel> users = [];
  var answer = "";
  void init() async {
    await Future.delayed(const Duration(seconds: 3));
    print('go!');
    FlutterNativeSplash.remove();
  }

  Future<File?> _getFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    print('>>>Image');
    if (result != null) {
      File file = File(result.files.single.path!);
      return file;
    }
    return null;
  }

  void _testing() async {
    if (dotenv.env.isNotEmpty) {
      final model = GenerativeModel(
        model: 'gemini-1.5-flash-latest',
        apiKey: dotenv!.env!['GEMINI_API'].toString(),
      );

      final prompt =
          'with the following image pls rate my foods and response as json object with the following fields : rating, title, comment, calories, fat, healthy percentages, similar  recommendation';
      // final content = [Content.text(prompt)];
      final imageFile = await _getFiles();
      if (imageFile == null) {
        return;
      }
      final imageBytes = imageFile.readAsBytesSync();

      // Content to be sent: Text and image

      final contents = [
        Content.text(prompt),
        Content.data(
          'image/jpg', // MIME type of the image (adjust if needed)
          imageBytes, // Raw image bytes
        ),
      ];
      final response = await model.generateContent(contents);
      setState(() {
        answer = 'Completed';
      });
      print('>>>Response is ${response.text}');
    }
  }

  @override
  void initState() {
    init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: InkWell(
            autofocus: false,
            onTap: () => _navigation(ctx: context, screen: AnimatedScreen()),
            child: const Text('Click'),
          ),
          title: Column(
            children: [
              Text('${AppConfig.appConfig.flavor}'),
            ],
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            ElevatedButton(onPressed: _testing, child: Text('Generate')),
            Text(StringText.welcomeScreen),
            if (answer.isNotEmpty)
              Text('Ai is answering with ${answer.substring(0, 25)}'),
          ],
        )));
  }

  void _navigation({required BuildContext ctx, required Widget screen}) {
    Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }
}
