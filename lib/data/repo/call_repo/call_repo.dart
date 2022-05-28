import 'package:technerd_task/export.dart';

mixin CallsRepo {
  Future<Either<AppError, CallDataList>> getCallData();
}
