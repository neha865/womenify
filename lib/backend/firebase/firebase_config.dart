import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBuk7D525rU7ucCv67-lYzpRNbHeOhuNIg",
            authDomain: "womens-f24c0.firebaseapp.com",
            projectId: "womens-f24c0",
            storageBucket: "womens-f24c0.appspot.com",
            messagingSenderId: "1048754965602",
            appId: "1:1048754965602:web:c265542113039de0b2d53b",
            measurementId: "G-9K4FH192SJ"));
  } else {
    await Firebase.initializeApp();
  }
}
