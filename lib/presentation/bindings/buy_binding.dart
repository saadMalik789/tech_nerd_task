
import 'package:technerd_task/export.dart';
import 'package:get/get.dart';

class BuyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuyController>(
            () => BuyController(Get.find<BuyUseCase>()));
  }
}
