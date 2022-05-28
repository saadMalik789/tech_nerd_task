import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  final arg;

  AppRoutes({this.arg});

  static List<GetPage> getPage = [
    GetPage(
      name: RouteNames.splashScreen,
      page: () => Splash(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteNames.homeScreen,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteNames.callPage,
      page: () => CallsPage(),
      binding: CallsBinding(),
    ),
    GetPage(
      name: RouteNames.buyPage,
      page: () => BuyPage(),
      binding: BuyBinding(),
    ),
  ];

  static Future<dynamic>? appRoutes(final String routeName, {arg}) {
    switch (routeName) {
      //push to next
      case RouteNames.splashScreen:
      case RouteNames.callPage:
      case RouteNames.buyPage:
        return Get.toNamed(routeName, arguments: arg);

      //clear all and push
      case RouteNames.homeScreen:
        return Get.offAllNamed(routeName, arguments: arg);

      default:
        return _errorRoute();
    }
  }

  static Future<dynamic>? _errorRoute() {
    return Get.to(Container());
  }
}
