import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController homeTapController;

  @override
  void onInit() {
    super.onInit();
    homeTapController = TabController(length: 3, vsync: this);
  }

  @override
  void onClose() {
    homeTapController.dispose();
    super.onClose();
  }
}
