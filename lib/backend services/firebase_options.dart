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
    apiKey: 'AIzaSyB-kxPO0DwHCvtDQb3vM8W-YdXu9kRpLcE',
    appId: '1:1020105057307:web:1e377d13dc4234e4a204be',
    messagingSenderId: '1020105057307',
    projectId: 'authenticatorconstructionapp',
    authDomain: 'authenticatorconstructionapp.firebaseapp.com',
    storageBucket: 'authenticatorconstructionapp.appspot.com',
    measurementId: 'G-GVLHFZXBNC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkyVHALfbtA4iRCnIJOqX0plubhiAxj_c',
    appId: '1:1020105057307:android:e0447b2985d26f3aa204be',
    messagingSenderId: '1020105057307',
    projectId: 'authenticatorconstructionapp',
    storageBucket: 'authenticatorconstructionapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcwemal9XvnovT-_BsOfznj9Ibe5e8wEM',
    appId: '1:1020105057307:ios:75cdc7016547c7e7a204be',
    messagingSenderId: '1020105057307',
    projectId: 'authenticatorconstructionapp',
    storageBucket: 'authenticatorconstructionapp.appspot.com',
    iosBundleId: 'com.example.dadsapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcwemal9XvnovT-_BsOfznj9Ibe5e8wEM',
    appId: '1:1020105057307:ios:02b260cea2366672a204be',
    messagingSenderId: '1020105057307',
    projectId: 'authenticatorconstructionapp',
    storageBucket: 'authenticatorconstructionapp.appspot.com',
    iosBundleId: 'com.example.dadsapp.RunnerTests',
  );
}
