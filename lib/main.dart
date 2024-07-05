import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:safe_sleep/colors.dart';
import 'package:safe_sleep/firebase_options.dart';
import 'package:safe_sleep/pages/onboarding_page.dart';

import 'package:safe_sleep/userCheck.dart';

String s = '';
String token = '';
final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print("it is done");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _primaryColor = tone;
  Color _accentColor = Color.fromARGB(68, 88, 191, 138);
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: _primaryColor,
          secondaryHeaderColor: _accentColor,
          scaffoldBackgroundColor: Colors.grey.shade100,
          fontFamily: 'Roboto-Regular'),
      debugShowCheckedModeBanner: false,
      //home: VerifyCheck(),
      home: OnboardingPage(),
    );
  }
}
