import 'package:technerd_task/export.dart';
import 'package:get/get.dart';

class CallsController extends GetxController with StateMixin<CallsPage> {
  final CallUseCase useCase;

  CallsController(this.useCase);

  @override
  Future<void> onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    await useCase.getCallData();
    if (useCase.data.isNotEmpty) {
      change(null, status: RxStatus.success());
    } else {
      change(
        null,
        status: RxStatus.empty(),
      );
    }
  }

  void onBack() {
    Get.back();
  }

  List<CallModel> get data => useCase.data;
}
