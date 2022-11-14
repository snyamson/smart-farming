import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:smart_farming/core/models/cart_model.dart';
import 'package:smart_farming/core/models/product.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class CartController extends GetxController {
  RxBool isAddedToCart = false.obs;
  RxList cartProducts = <ParseObject>[].obs;
  RxMap cartItems = <String, CartModel>{}.obs;

  void addToCart(Product product, int quantity) {
    if (cartItems.containsKey(product.id.toString())) {
      Get.snackbar(
        'Oops',
        'Item Already in Cart',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        colorText: AppColors.primaryColor,
        borderRadius: Dimensions.radius10,
      );
    }
    cartItems.putIfAbsent(product.id.toString(), () {
      return CartModel(
        product.id.toString(),
        product.name,
        product.price,
        product.unit,
        product.image,
        quantity,
        DateTime.now().toString(),
        true,
      );
    });
  }

  // void addToCart() {
  //   if (!cartProducts.contains(homeController.selectedProduct)) {
  //     cartProducts.add(homeController.selectedProduct);
  //     isAddedToCart.value = true;
  //   } else {
  //     Get.snackbar('Oops', 'Product already in cart');
  //   }
  // }

  // void removeFromCart(product) {
  //   if (cartProducts.contains(product)) {
  //     cartProducts.remove(product);
  //   }
  // }

  // void checkCart() {
  //   if (cartProducts.contains(homeController.selectedProduct)) {
  //     isAddedToCart.value = true;
  //   } else {
  //     isAddedToCart.value = false;
  //   }
  // }
}
