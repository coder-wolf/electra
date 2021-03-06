// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyADEzQhaIsLoXylj7BmpnKNYaqAUBOsZEA',
    appId: '1:810082548773:web:54934f3d09c6c6029953cc',
    messagingSenderId: '810082548773',
    projectId: 'electricity-bill-50bdc',
    authDomain: 'electricity-bill-50bdc.firebaseapp.com',
    databaseURL: 'https://electricity-bill-50bdc-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'electricity-bill-50bdc.appspot.com',
    measurementId: 'G-LZQWHGJTY9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRn6qmM36xN9pzmUhWc-OYmZdQOsFEJXk',
    appId: '1:810082548773:android:eb178241eb677b319953cc',
    messagingSenderId: '810082548773',
    projectId: 'electricity-bill-50bdc',
    databaseURL: 'https://electricity-bill-50bdc-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'electricity-bill-50bdc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzwpqcHcqxxH8yOwVe1edCBtFWg4BJXv8',
    appId: '1:810082548773:ios:01688593e7d9de919953cc',
    messagingSenderId: '810082548773',
    projectId: 'electricity-bill-50bdc',
    databaseURL: 'https://electricity-bill-50bdc-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'electricity-bill-50bdc.appspot.com',
    iosClientId: '810082548773-thbcn0cb8rkbmo7tbjpl6sjo95l85p70.apps.googleusercontent.com',
    iosBundleId: 'com.electra.app',
  );
}
