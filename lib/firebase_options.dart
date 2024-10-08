// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDlU-jlukAZhulp8WpySCtApgHEgll9YO8',
    appId: '1:846321486954:web:2318594d84fe7a2200ce13',
    messagingSenderId: '846321486954',
    projectId: 'chatsy-cacda',
    authDomain: 'chatsy-cacda.firebaseapp.com',
    storageBucket: 'chatsy-cacda.appspot.com',
    measurementId: 'G-Q7J1K9GCPE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgVRReseDKqyL6AKBDjLPKX3iL0yBQMeM',
    appId: '1:846321486954:android:dba6b23a0e71ace600ce13',
    messagingSenderId: '846321486954',
    projectId: 'chatsy-cacda',
    storageBucket: 'chatsy-cacda.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_JNMpCERB0EgjpCYv7uj8mKySZk-BYfs',
    appId: '1:846321486954:ios:2f916e2ebbec6daa00ce13',
    messagingSenderId: '846321486954',
    projectId: 'chatsy-cacda',
    storageBucket: 'chatsy-cacda.appspot.com',
    iosBundleId: 'com.example.chatsy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_JNMpCERB0EgjpCYv7uj8mKySZk-BYfs',
    appId: '1:846321486954:ios:2f916e2ebbec6daa00ce13',
    messagingSenderId: '846321486954',
    projectId: 'chatsy-cacda',
    storageBucket: 'chatsy-cacda.appspot.com',
    iosBundleId: 'com.example.chatsy',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDlU-jlukAZhulp8WpySCtApgHEgll9YO8',
    appId: '1:846321486954:web:3ed6ab2ce8293a2400ce13',
    messagingSenderId: '846321486954',
    projectId: 'chatsy-cacda',
    authDomain: 'chatsy-cacda.firebaseapp.com',
    storageBucket: 'chatsy-cacda.appspot.com',
    measurementId: 'G-557PM406MR',
  );
}