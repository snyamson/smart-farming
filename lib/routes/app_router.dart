import 'package:get/get.dart';
import 'package:smart_farming/ui/pages/home/home_page.dart';

class AppRouter {
  static String home = '/';

  static String get getHomeRoute => home;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
  ];
}
