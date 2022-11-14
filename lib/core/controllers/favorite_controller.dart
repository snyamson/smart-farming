// import 'package:get/get.dart';
// import 'package:smart_farming/core/controllers/home_controller.dart';

// class FavoriteController extends GetxController {
//   final homeController = Get.find<HomeController>();

//   RxList favList = [].obs;
//   RxBool isFav = false.obs;

//   checkFavorite() async {
//     if (favList.contains(homeController.selectedProduct)) {
//       isFav.value = true;
//     } else {
//       isFav.value = false;
//     }
//   }

//   Future<void> addRemoveToFavorite() async {
//     if (favList.contains(homeController.selectedProduct)) {
//       favList.remove(homeController.selectedProduct);
//     } else {
//       favList.add(homeController.selectedProduct);
//       isFav.value = true;
//     }
//   }
// }
