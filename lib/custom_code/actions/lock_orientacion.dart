// Automatic FlutterFlow imports
// Imports other custom actions
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

Future lockOrientacion() async {
  // Add your function code here!
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
