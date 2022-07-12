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
    apiKey: 'AIzaSyDY1icA5Sar59z9NkWtO5DAn3CVCdZTL6c',
    appId: '1:608480446369:web:9fb7028589349d6bc46de0',
    messagingSenderId: '608480446369',
    projectId: 'wallets-53896',
    authDomain: 'wallets-53896.firebaseapp.com',
    storageBucket: 'wallets-53896.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1G035t1biJDKNb2o_ga4ljgu-ccokakQ',
    appId: '1:608480446369:android:cf06d1e3392df2d3c46de0',
    messagingSenderId: '608480446369',
    projectId: 'wallets-53896',
    storageBucket: 'wallets-53896.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4_CbDoZ-qQBPYlp-BGz14L1eDMrO8HgA',
    appId: '1:608480446369:ios:8c94dae6f42a4073c46de0',
    messagingSenderId: '608480446369',
    projectId: 'wallets-53896',
    storageBucket: 'wallets-53896.appspot.com',
    iosClientId: '608480446369-3mshrn4325m6hufod14lfr98rrmi9a9i.apps.googleusercontent.com',
    iosBundleId: 'com.example.adsPayApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4_CbDoZ-qQBPYlp-BGz14L1eDMrO8HgA',
    appId: '1:608480446369:ios:8c94dae6f42a4073c46de0',
    messagingSenderId: '608480446369',
    projectId: 'wallets-53896',
    storageBucket: 'wallets-53896.appspot.com',
    iosClientId: '608480446369-3mshrn4325m6hufod14lfr98rrmi9a9i.apps.googleusercontent.com',
    iosBundleId: 'com.example.adsPayApp',
  );
}
