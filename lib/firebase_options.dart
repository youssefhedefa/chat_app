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
    apiKey: 'AIzaSyAQp0j_Q4qyPPxEXIlZnTVNtGd0dbBN-vM',
    appId: '1:624999269579:web:565f1f4d0d0fe5de6c474e',
    messagingSenderId: '624999269579',
    projectId: 'char-app-b03a2',
    authDomain: 'char-app-b03a2.firebaseapp.com',
    storageBucket: 'char-app-b03a2.appspot.com',
    measurementId: 'G-JR60X73EQN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAL4rMgHKArHdepGPpnY_9D3KJaV8m-8g0',
    appId: '1:624999269579:android:246ade7c78d695ae6c474e',
    messagingSenderId: '624999269579',
    projectId: 'char-app-b03a2',
    storageBucket: 'char-app-b03a2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCda2CKNhtX0-glUKtNDSEHAzxGmyT4cxM',
    appId: '1:624999269579:ios:48dbbab062d949316c474e',
    messagingSenderId: '624999269579',
    projectId: 'char-app-b03a2',
    storageBucket: 'char-app-b03a2.appspot.com',
    iosClientId: '624999269579-c9ac55r26gjeeidbva4qbe48dnu8farn.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCda2CKNhtX0-glUKtNDSEHAzxGmyT4cxM',
    appId: '1:624999269579:ios:3b4c5f0402e11af06c474e',
    messagingSenderId: '624999269579',
    projectId: 'char-app-b03a2',
    storageBucket: 'char-app-b03a2.appspot.com',
    iosClientId: '624999269579-mvrc6l023p8g4rfermosq4mfckknpr0u.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
