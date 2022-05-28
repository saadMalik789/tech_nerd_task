import 'package:technerd_task/export.dart';

mixin BuyRepo {
  Future<Either<AppError, BuyDataList>> getBuyData(int type);
}
