import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailPage extends GetView {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
    );
  }
}
