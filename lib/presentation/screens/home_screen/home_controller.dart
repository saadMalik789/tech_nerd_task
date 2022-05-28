import 'package:technerd_task/export.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<HomePage> {
  openCallPage() {
    AppRoutes.appRoutes(RouteNames.callPage);
  }

  openBuyPage() {
    AppRoutes.appRoutes(RouteNames.buyPage, arg: 1);
  }

  openSellPage() {
    AppRoutes.appRoutes(RouteNames.buyPage, arg: 2);
  }
}
