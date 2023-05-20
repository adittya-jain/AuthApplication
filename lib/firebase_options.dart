// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
//  import 'firebase_options.dart';
//  // ...
//  await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//  );
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
    apiKey: 'AIzaSyBCMKGgyGuMbkAq4UspAooQ81x09phjWyg',
    appId: '1:112743911093:web:d79214a435bfe54d6b78fc',
    messagingSenderId: '112743911093',
    projectId: 'auth-login-48c9f',
    authDomain: 'auth-login-48c9f.firebaseapp.com',
    storageBucket: 'auth-login-48c9f.appspot.com',
    measurementId: 'G-MKF4794T6B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCr1G46YOu7hJ_DYwtJhlrx1RWRyFCOkRM',
    appId: '1:112743911093:android:71e0c1679d7125dd6b78fc',
    messagingSenderId: '112743911093',
    projectId: 'auth-login-48c9f',
    storageBucket: 'auth-login-48c9f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAX5tagtXvpDn_6gXZU45LV3EQ0V4TvPIc',
    appId: '1:112743911093:ios:6e782cfb966d28846b78fc',
    messagingSenderId: '112743911093',
    projectId: 'auth-login-48c9f',
    storageBucket: 'auth-login-48c9f.appspot.com',
    iosClientId: '112743911093-e6gvbd6sfifq7h1m4brqq9mg5rcdolem.apps.googleusercontent.com',
    iosBundleId: 'com.example.authApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAX5tagtXvpDn_6gXZU45LV3EQ0V4TvPIc',
    appId: '1:112743911093:ios:6e782cfb966d28846b78fc',
    messagingSenderId: '112743911093',
    projectId: 'auth-login-48c9f',
    storageBucket: 'auth-login-48c9f.appspot.com',
    iosClientId: '112743911093-e6gvbd6sfifq7h1m4brqq9mg5rcdolem.apps.googleusercontent.com',
    iosBundleId: 'com.example.authApplication',
  );
}
