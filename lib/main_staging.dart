import 'package:demo/features/home/welcome_screen.dart';
import 'package:demo/utils/constant/enums.dart';
import 'package:demo/utils/firebase/firebase.dart';
import 'package:demo/utils/firebase/firebase_options_staging.dart';
import 'package:demo/utils/flavor/config.dart';
import 'package:demo/utils/helpers/helpers_utils.dart';
import 'package:demo/utils/theme/schema.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // await FlutterConfig.loadEnvVariables();
  await dotenv.load(fileName: ".env.dev");
  AppConfig.create(flavor: Flavor.staging);
  initializeFirebaseApp(DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    HelpersUtils.removeSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        darkTheme: SchemaData.darkThemeData,
        theme: SchemaData.lightThemeData,
        home: WelcomeScreen());
  }
}
