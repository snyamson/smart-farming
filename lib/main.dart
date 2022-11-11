import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:smart_farming/firebase_options.dart';
import 'package:smart_farming/routes/app_router.dart';
import 'package:smart_farming/theme/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
  );

  //STATUSBAR COLOR CHANGE
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: AppColors.primaryColor),
  );

  // STARTER CODE
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Farming',
      initialRoute: AppRouter.main,
      getPages: AppRouter.routes,
    );
  }
}
