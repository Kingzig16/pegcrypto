import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCWG9gdlc39qiQeJ9v4ulONe88lEkS907M",
            authDomain: "p-e-gcrypto-s0chg8.firebaseapp.com",
            projectId: "p-e-gcrypto-s0chg8",
            storageBucket: "p-e-gcrypto-s0chg8.firebasestorage.app",
            messagingSenderId: "643295317393",
            appId: "1:643295317393:web:07c56d70dc71407e98de30"));
  } else {
    await Firebase.initializeApp();
  }
}
