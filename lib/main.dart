import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_farming/routes/app_router.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/utils/constants/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

// INITIALIZE ALL DEPENDENCIES
  await dep.init();

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
