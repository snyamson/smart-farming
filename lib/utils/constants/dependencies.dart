import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:smart_farming/firebase_options.dart';

Future<void> init() async {
  // FIREBASE INITIALIZATION
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // ENVIRONMENT VARIABLES INITIALIZATION
  await dotenv.load();

// PARSE BACKEND INITIALIZATION
  final keyApplicationId = dotenv.env['KEY_APPLICATION_ID'] ?? '';
  final keyClientKey = dotenv.env['KEY_CLIENT_ID'] ?? '';
  final keyParseServerUrl = dotenv.env['KEY_PARSE_SERVER_URL'] ?? '';

  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey,
    autoSendSessionId: true,
    debug: true,
  );
}
