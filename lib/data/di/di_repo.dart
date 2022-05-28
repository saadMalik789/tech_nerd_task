import 'package:get/get.dart';
import 'package:technerd_task/export.dart';

class RepoDependencies {
  late NetworkHelper _networkHelper;
  late EndPoints _endPoints;

  Future init() async {
    _endPoints = EndPoints();
    _networkHelper = NetworkHelperImpl();
  }

  initializeRepoDependencies() {
    Get.lazyPut<CallsRepo>(
      () => CallsRepoImpl(_networkHelper, _endPoints),
      fenix: true,
    );

    Get.lazyPut<BuyRepo>(
      () => BuyRepoImpl(_networkHelper, _endPoints),
      fenix: true,
    );
  }
}
