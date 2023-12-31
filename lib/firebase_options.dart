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
    apiKey: 'AIzaSyAG1DtsA2FgEv1xz28hMFk8BLUcAq0P8-c',
    appId: '1:557847221433:web:19821e9bf49669d6593768',
    messagingSenderId: '557847221433',
    projectId: 'flutter-prep-6a73a',
    authDomain: 'flutter-prep-6a73a.firebaseapp.com',
    databaseURL: 'https://flutter-prep-6a73a-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-prep-6a73a.appspot.com',
    measurementId: 'G-9EMDW6DZG0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSeFir-K95rqkIT6QKS8G_6Y5sB8baxys',
    appId: '1:557847221433:android:639ae6744467a967593768',
    messagingSenderId: '557847221433',
    projectId: 'flutter-prep-6a73a',
    databaseURL: 'https://flutter-prep-6a73a-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-prep-6a73a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApPegqyHZ14cQfq2FBtNKtD1fd8Zzd3sg',
    appId: '1:557847221433:ios:c5bd451d6e8d69b3593768',
    messagingSenderId: '557847221433',
    projectId: 'flutter-prep-6a73a',
    databaseURL: 'https://flutter-prep-6a73a-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-prep-6a73a.appspot.com',
    iosClientId: '557847221433-jvgn3ag5adhmqvccr5gjkvg0a0v3utni.apps.googleusercontent.com',
    iosBundleId: 'com.chat.app.chapApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApPegqyHZ14cQfq2FBtNKtD1fd8Zzd3sg',
    appId: '1:557847221433:ios:0ff643839c2f1f4f593768',
    messagingSenderId: '557847221433',
    projectId: 'flutter-prep-6a73a',
    databaseURL: 'https://flutter-prep-6a73a-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-prep-6a73a.appspot.com',
    iosClientId: '557847221433-tsjo2onlbh1tvv6hqid47adnga00k9ii.apps.googleusercontent.com',
    iosBundleId: 'com.chat.app.chapApp.RunnerTests',
  );
}
