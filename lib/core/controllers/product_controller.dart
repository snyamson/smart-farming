import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:smart_farming/core/controllers/cart_controller.dart';
import 'package:smart_farming/core/models/product.dart';
import 'package:smart_farming/core/models/product_category.dart';
import 'package:smart_farming/core/services/product_service.dart';

class ProductController extends GetxController {
  CartController cart = Get.find<CartController>();

  RxBool isLoading = false.obs;

  final RxList _products = <ParseObject>[].obs;

  final List<Product> _fakeProducts = [
    Product(
      1,
      'Soya Beans',
      17,
      'soya beans from farm direct',
      'kg',
      'assets/images/fresh_corn.jpg',
      'Very Nutritious',
      '',
      '3',
      ProductCategory(
        1,
        'Soya Beans',
        'Pick up from farms direct',
        10,
      ),
    ),
    Product(
      2,
      'Maize',
      23,
      'fresh maize from farm direct',
      'kg',
      'assets/images/rice.jpg',
      'Very Nutritious',
      '',
      '3',
      ProductCategory(
        2,
        'Maize',
        'Fruit mix fresh pack',
        5,
      ),
    ),
    Product(
      4,
      'Yellow Corn',
      46,
      'fresh yellow maize from farm direct',
      'kg',
      'assets/images/fresh_corn.jpg',
      'Very Nutritious',
      '',
      '2',
      ProductCategory(
        2,
        'Maize',
        'Fruit mix fresh pack',
        5,
      ),
    ),
    Product(
      5,
      'White Corn',
      76,
      'fresh White maize from farm direct',
      'kg',
      'assets/images/fresh_corn.jpg',
      'Very Nutritious',
      '',
      '3',
      ProductCategory(
        2,
        'Maize',
        'Fruit mix fresh pack',
        5,
      ),
    ),
    Product(
      3,
      'Wheat',
      40,
      'Wheat from farm direct',
      'kg',
      'assets/images/fresh_corn.jpg',
      'Very Nutritious',
      '',
      '3',
      ProductCategory(
        3,
        'Wheat',
        'Fresh Wheat from farm',
        8,
      ),
    )
  ];

  final List<ProductCategory> _fakeProductCategory = [
    ProductCategory(
      1,
      'Soya Beans',
      'Pick up from farms direct',
      10,
    ),
    ProductCategory(
      2,
      'Maize',
      'Fruit mix fresh pack',
      5,
    ),
    ProductCategory(
      3,
      'Wheat',
      'Fresh Wheat from farm',
      8,
    ),
  ];

  List<Product> get products => _fakeProducts;
  List<ProductCategory> get productCategory => _fakeProductCategory;

  Future<void> fetchProducts() async {
    ParseResponse apiResponse = await ProductService.fetchProducts();

    if (apiResponse.success && apiResponse.results != null) {
      _products.value = apiResponse.results as List<ParseObject>;
    } else {
      _products.value = <ParseObject>[];
    }
  }

  void addToCart(Product product) {
    print('calling');
    cart.addToCart(product, 1);
  }
}
