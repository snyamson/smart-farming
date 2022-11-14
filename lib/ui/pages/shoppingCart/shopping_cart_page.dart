import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/cart_controller.dart';

class ShoppingCartPage extends GetView<CartController> {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: controller.cartItems.length,
          itemBuilder: (context, index) => const Text('index'),
        ),
      ),
    );
  }
}
