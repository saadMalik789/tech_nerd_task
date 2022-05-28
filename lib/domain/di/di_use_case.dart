import 'package:technerd_task/export.dart';
import 'package:get/get.dart';

Future<void> initializeUseCasesDependencies() async {
  final RepoDependencies repoDependencies = RepoDependencies();
  await repoDependencies.init();
  await repoDependencies.initializeRepoDependencies();

  Get.lazyPut<CallUseCase>(
    () => CallUseCase(
      Get.find<CallsRepo>(),
    ),
    fenix: true,
  );

  Get.lazyPut<BuyUseCase>(
    () => BuyUseCase(
      Get.find<BuyRepo>(),
    ),
    fenix: true,
  );
}
