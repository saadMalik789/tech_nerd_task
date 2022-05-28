import 'package:technerd_task/export.dart';
import 'package:get/get.dart';

class CallsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CallsController>(
        () => CallsController(Get.find<CallUseCase>()));
  }
}