import 'package:firebase_core/firebase_core.dart';

Future<void> initializeFirebaseApp(
    FirebaseOptions DefaultFirebaseOptions) async {
  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions);
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
}
