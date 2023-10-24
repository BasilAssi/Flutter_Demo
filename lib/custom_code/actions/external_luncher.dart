// Automatic FlutterFlow imports
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:external_app_launcher/external_app_launcher.dart';

Future externalLuncher() async {
  // Add your function code here!

  var openAppResult = await LaunchApp.openApp(
      androidPackageName: 'com.blockbuilder.wasset',
      iosUrlScheme: 'pulsesecure://',
      appStoreLink:
          'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
      openStore: false);
  print('openAppResult => $openAppResult ${openAppResult.runtimeType}');
}
