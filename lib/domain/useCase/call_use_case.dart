import 'package:technerd_task/export.dart';

class CallUseCase {
  final CallsRepo repo;

  CallUseCase(this.repo);

  List<CallModel> data = List.empty(growable: true);

  Future<Either<AppError, AppSuccess>> getCallData() async {
    try {
      final either = await repo.getCallData();
      return either.fold(
        (error) => Left(AppError()),
        (data) {
          populateHomeData(data);
          return Right(AppSuccess());
        },
      );
    } catch (error) {
      return Left(AppError(title: error.toString()));
    }
  }

  void populateHomeData(CallDataList homeData) {
    data = homeData.dataList;
  }
}
