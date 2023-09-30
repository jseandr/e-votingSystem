import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDUev_w7SfmtNZWklvx87UbGBs4Sw8F6J8",
            authDomain: "bupe-votingsystem.firebaseapp.com",
            projectId: "bupe-votingsystem",
            storageBucket: "bupe-votingsystem.appspot.com",
            messagingSenderId: "949925366032",
            appId: "1:949925366032:web:c03bdfbdee92da6513fd95",
            measurementId: "G-7B4WFCK6QV"));
  } else {
    await Firebase.initializeApp();
  }
}
