import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC6KZ-ozVUjUbnnTZotuFtHnKC2en-h7yE",
            authDomain: "courier-pokxy8.firebaseapp.com",
            projectId: "courier-pokxy8",
            storageBucket: "courier-pokxy8.appspot.com",
            messagingSenderId: "467378593789",
            appId: "1:467378593789:web:7197cc8ba3f0d04dec8394"));
  } else {
    await Firebase.initializeApp();
  }
}
