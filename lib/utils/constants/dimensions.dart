import 'package:get/get.dart';

class Dimensions {
  // Screen Height and Width
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //Containers
  static double productTileContainerHeight = 5.873;
  static double productTileContainerWidth = 7.167;
  static double productImageContainerHeight = 4.805;
  static double productImageContainerWidth = 2.525;

  // Dynamic Sizes for Padding and Margin
  static double height10 = screenHeight / 84.571;
  static double height15 = screenHeight / 56.380;
  static double height40 = screenHeight / 21.143;
  static double height95 = screenHeight / 8.902;

  // Dynamic Sizes for Padding and Margin
  static double width10 = screenHeight / 84.571;
  static double width12 = screenHeight / 70.476;
  static double width15 = screenHeight / 56.380;
  static double width95 = screenHeight / 8.902;

  // Dynamic Sizes for FontSize
  static double font10 = screenHeight / 84.571;
  static double font12 = screenHeight / 70.476;
  static double font14 = screenHeight / 60.408;
  static double font16 = screenHeight / 52.857;
  static double font18 = screenHeight / 46.984;
  static double font20 = screenHeight / 42.286;
  static double font24 = screenHeight / 35.238;
  static double font26 = screenHeight / 32.527;

  // Dynamic Sizes for BorderRadius
  static double radius5 = screenHeight / 169.142;
  static double radius10 = screenHeight / 84.571;

  //Icon Size
  static double iconSize16 = screenHeight / 52.857;
  static double iconSize18 = screenHeight / 46.984;
  static double iconSize24 = screenHeight / 35.238;
}
