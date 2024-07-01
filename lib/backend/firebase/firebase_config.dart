import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBQ3lcwVYMERoIAsn59B7EoOAiBSn3bUJo",
            authDomain: "power-zxvlh8.firebaseapp.com",
            projectId: "power-zxvlh8",
            storageBucket: "power-zxvlh8.appspot.com",
            messagingSenderId: "899511432641",
            appId: "1:899511432641:web:5a2e8af135e5e4c4aaeb40",
            measurementId: "G-D8PGS0JLFY"));
  } else {
    await Firebase.initializeApp();
  }
}
