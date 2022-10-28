import 'package:get/get.dart';
import 'package:smart_farming/core/bindings/main_binding.dart';
import 'package:smart_farming/core/bindings/onboarding_binding.dart';
import 'package:smart_farming/core/bindings/splash_binding.dart';
import 'package:smart_farming/ui/pages/home/home_page.dart';
import 'package:smart_farming/ui/pages/main/main_page.dart';
import 'package:smart_farming/ui/pages/onboarding/onboarding_page.dart';
import 'package:smart_farming/ui/pages/splash/splash_page.dart';

class AppRouter {
  static String splash = '/';
  static String onboarding = '/onboarding';
  static String main = '/main';
  static String home = '/home';

  static String get getOnboardingRoute => onboarding;
  static String get getSplashRoute => splash;
  static String get getMainRoute => main;
  static String get getHomeRoute => home;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
      name: onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
  ];
}
