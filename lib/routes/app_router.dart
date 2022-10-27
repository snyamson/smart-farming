import 'package:get/get.dart';
import 'package:smart_farming/core/bindings/onboarding_binding.dart';
import 'package:smart_farming/ui/pages/home/home_page.dart';
import 'package:smart_farming/ui/pages/onboarding/onboarding_page.dart';

class AppRouter {
  static String home = '/';
  static String onboarding = '/onboarding';

  static String get getHomeRoute => home;
  static String get getOnboardingRoute => onboarding;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
      name: onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
  ];
}
