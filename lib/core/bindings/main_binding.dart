import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/cart_controller.dart';
import 'package:smart_farming/core/controllers/main_controller.dart';
import 'package:smart_farming/core/controllers/product_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => ProductController());
    //  Get.lazyPut(() => FavoriteController());
  }
}
