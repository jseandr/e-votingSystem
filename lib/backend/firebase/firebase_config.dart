import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDbFQs3WlW4iRZttSaB13nJ56jANOzSnoA",
            authDomain: "votingsystem-c80eb.firebaseapp.com",
            projectId: "votingsystem-c80eb",
            storageBucket: "votingsystem-c80eb.appspot.com",
            messagingSenderId: "44127129486",
            appId: "1:44127129486:web:c8d5c57d41d35fb23a1edf",
            measurementId: "G-V06SLW79BZ"));
  } else {
    await Firebase.initializeApp();
  }
}
