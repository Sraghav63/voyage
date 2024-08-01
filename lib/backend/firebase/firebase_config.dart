import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDA9lEQAGQ-vxrP_t1_rGmfkb5jDgkQrAE",
            authDomain: "empower-hackathon-o8w1jr.firebaseapp.com",
            projectId: "empower-hackathon-o8w1jr",
            storageBucket: "empower-hackathon-o8w1jr.appspot.com",
            messagingSenderId: "462236492822",
            appId: "1:462236492822:web:74a2a8ed944fe835048137"));
  } else {
    await Firebase.initializeApp();
  }
}
