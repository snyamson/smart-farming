import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class ProductService extends GetxService {
  static Future<ParseResponse> fetchProducts() async {
    ParseResponse apiResponse = await ParseObject('Product').getAll();

    return apiResponse;
  }
}
