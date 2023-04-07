import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAoW1HvGDdo-cLO3jOa6NcAEWXNyaFX0xg",
            authDomain: "flutterwebtraining3.firebaseapp.com",
            projectId: "flutterwebtraining3",
            storageBucket: "flutterwebtraining3.appspot.com",
            messagingSenderId: "919668768391",
            appId: "1:919668768391:web:4166dd01bdd8ea6c428222",
            measurementId: "G-HDSD52VEF5"));
  } else {
    await Firebase.initializeApp();
  }
}
