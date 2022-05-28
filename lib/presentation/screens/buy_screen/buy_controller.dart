import 'package:technerd_task/export.dart';
import 'package:get/get.dart';

class BuyController extends GetxController with StateMixin<BuyPage> {
  final BuyUseCase useCase;

  BuyController(this.useCase);

  int type = 0;

  @override
  Future<void> onInit() async {
    type = Get.arguments;
    super.onInit();
    change(null, status: RxStatus.loading());
    await useCase.getBuyData(type);
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

  List<BuyModel> get data => useCase.data;
}
