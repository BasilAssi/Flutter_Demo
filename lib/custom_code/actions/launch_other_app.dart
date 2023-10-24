// Automatic FlutterFlow imports
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:android_intent/android_intent.dart';

Future launchOtherApp() async {
  // Add your function code here!
  final AndroidIntent intent = AndroidIntent(
    action: 'action_view',
    package:
        'com.blockbuilder.wasset', // Replace with the other app's package name.
  );
  intent.launch();
}
