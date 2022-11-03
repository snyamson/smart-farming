import 'package:get/get.dart';
import 'package:smart_farming/core/bindings/auth_binding.dart';
import 'package:smart_farming/core/bindings/main_binding.dart';
import 'package:smart_farming/core/bindings/onboarding_binding.dart';
import 'package:smart_farming/core/bindings/splash_binding.dart';
import 'package:smart_farming/ui/pages/auth/enter_otp_page.dart';
import 'package:smart_farming/ui/pages/auth/enter_phone_number_page.dart';
import 'package:smart_farming/ui/pages/auth/register_page.dart';
import 'package:smart_farming/ui/pages/home/home_page.dart';
import 'package:smart_farming/ui/pages/main/main_page.dart';
import 'package:smart_farming/ui/pages/onboarding/onboarding_page.dart';
import 'package:smart_farming/ui/pages/splash/splash_page.dart';

class AppRouter {
  static String splash = '/';
  static String onboarding = '/onboarding';
  static String register = '/register';
  static String phone = '/phone';
  static String enterOtp = '/enterOtp';
  static String main = '/main';
  static String home = '/home';

  static String get getSplashRoute => splash;
  static String get getOnboardingRoute => onboarding;
  static String get getRegisterRoute => register;
  static String get getEnterPhoneRoute => phone;
  static String get getEnterOtpRoute => enterOtp;
  static String get getMainRoute => main;
  static String get getHomeRoute => home;

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: register,
      page: () => const RegisterPage(),
      binding: AuthBinding(),
    ),
    GetPage(
        name: phone,
        page: () => const EnterPhoneNumberPage(),
        transition: Transition.cupertino),
    GetPage(name: enterOtp, page: () => const EnterOtpPage()),
    GetPage(
      name: main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(name: home, page: () => const HomePage()),
  ];
}
