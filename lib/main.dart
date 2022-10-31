import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_farming/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Farming',
      initialRoute: AppRouter.enterOtp,
      getPages: AppRouter.routes,
    );
  }
}
