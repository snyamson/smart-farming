import 'package:get/get.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  List<String> pages = [
    '/home',
    '/cart',
    '/favorite',
    '/account',
  ];
}
