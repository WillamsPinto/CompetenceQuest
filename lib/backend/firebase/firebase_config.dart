import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA5GIXGno3B-zlkmAxDWZH9PtFe-J75Rn8",
            authDomain: "edu-tech4-0-idl0gh.firebaseapp.com",
            projectId: "edu-tech4-0-idl0gh",
            storageBucket: "edu-tech4-0-idl0gh.appspot.com",
            messagingSenderId: "82897203705",
            appId: "1:82897203705:web:8442f59d5cbb82da8c4d28"));
  } else {
    await Firebase.initializeApp();
  }
}
