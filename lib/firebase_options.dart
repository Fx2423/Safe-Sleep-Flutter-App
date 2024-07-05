// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBaCmppWYNXVaNEAiJAZsF57UHjkqbATnY',
    appId: '1:474977028058:web:472aef6ecf82aecaf422e3',
    messagingSenderId: '474977028058',
    projectId: 'safesleep-cbb18',
    authDomain: 'safesleep-cbb18.firebaseapp.com',
    databaseURL: 'https://safesleep-cbb18-default-rtdb.firebaseio.com',
    storageBucket: 'safesleep-cbb18.appspot.com',
    measurementId: 'G-YZHMPB716L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuqF_16UdmWFIOmkDcMsU9vipbY-WO-QU',
    appId: '1:474977028058:android:5a9ea077524bb0a6f422e3',
    messagingSenderId: '474977028058',
    projectId: 'safesleep-cbb18',
    databaseURL: 'https://safesleep-cbb18-default-rtdb.firebaseio.com',
    storageBucket: 'safesleep-cbb18.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByJ0cv4n2ND60T4S78VRk0hk3EBhwSQHU',
    appId: '1:474977028058:ios:d7dcec26861db3e9f422e3',
    messagingSenderId: '474977028058',
    projectId: 'safesleep-cbb18',
    databaseURL: 'https://safesleep-cbb18-default-rtdb.firebaseio.com',
    storageBucket: 'safesleep-cbb18.appspot.com',
    iosBundleId: 'com.example.safeSleep',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyByJ0cv4n2ND60T4S78VRk0hk3EBhwSQHU',
    appId: '1:474977028058:ios:e2a4417e32b96d98f422e3',
    messagingSenderId: '474977028058',
    projectId: 'safesleep-cbb18',
    databaseURL: 'https://safesleep-cbb18-default-rtdb.firebaseio.com',
    storageBucket: 'safesleep-cbb18.appspot.com',
    iosBundleId: 'com.example.safeSleep.RunnerTests',
  );
}
