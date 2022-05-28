import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with StateMixin<Splash> {
  bool isInitialized = false;
  final DatabaseService _dbService = DatabaseService();
  var sellData = [
    BuyModel(id: 1, name: 'Table', price: 12000, quantity: 1, type: 2),
    BuyModel(id: 2, name: 'TV', price: 38000, quantity: 2, type: 2),
    BuyModel(id: 3, name: 'IPhoneX', price: 150000, quantity: 1, type: 2),
  ];

  void initialize({required BuildContext context}) async {
    if (!isInitialized) {
      final di = GetInstance();
      initAppResources(context);
      _dbService.insertSellData(sellData);
      Future.delayed(const Duration(seconds: 3), () => navigateToHome());
    }
  }

  void initAppResources(BuildContext context) {
    if (!isInitialized) {
      isInitialized = true;
      initializeAppResources(context: context);
    }
  }

  void navigateToHome() {
    AppRoutes.appRoutes(RouteNames.homeScreen);
  }
}
