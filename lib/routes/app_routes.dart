import 'package:clean_city_worker/presentation/change_number_otp_screen/change_number_otp_screen.dart';
import 'package:clean_city_worker/presentation/change_number_otp_screen/binding/change_number_otp_binding.dart';
import 'package:clean_city_worker/presentation/splash_screen/splash_screen.dart';
import 'package:clean_city_worker/presentation/splash_screen/binding/splash_binding.dart';
import 'package:clean_city_worker/presentation/login_screen/login_screen.dart';
import 'package:clean_city_worker/presentation/login_screen/binding/login_binding.dart';
import 'package:clean_city_worker/presentation/otp_screen/otp_screen.dart';
import 'package:clean_city_worker/presentation/otp_screen/binding/otp_binding.dart';
import 'package:clean_city_worker/presentation/home_worker_container_screen/home_worker_container_screen.dart';
import 'package:clean_city_worker/presentation/home_worker_container_screen/binding/home_worker_container_binding.dart';
import 'package:clean_city_worker/presentation/change_number_screen/change_number_screen.dart';
import 'package:clean_city_worker/presentation/change_number_screen/binding/change_number_binding.dart';
import 'package:clean_city_worker/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:clean_city_worker/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String changeNumberOtpScreen = '/change_number_otp_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String otpScreen = '/otp_screen';

  static const String homeWorkerPage = '/home_worker_page';

  static const String homeWorkerContainerScreen =
      '/home_worker_container_screen';

  static const String profilePage = '/profile_page';

  static const String historyWorkerPage = '/history_worker_page';

  static const String localMapPage = '/local_map_page';

  static const String changeNumberScreen = '/change_number_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: changeNumberOtpScreen,
      page: () => ChangeNumberOtpScreen(),
      bindings: [
        ChangeNumberOtpBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: homeWorkerContainerScreen,
      page: () => HomeWorkerContainerScreen(),
      bindings: [
        HomeWorkerContainerBinding(),
      ],
    ),
    GetPage(
      name: changeNumberScreen,
      page: () => ChangeNumberScreen(),
      bindings: [
        ChangeNumberBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
