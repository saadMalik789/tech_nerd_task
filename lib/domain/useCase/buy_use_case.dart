import 'package:technerd_task/export.dart';

class BuyUseCase {
  final BuyRepo repo;

  BuyUseCase(this.repo);

  List<BuyModel> data = List.empty(growable: true);

  Future<Either<AppError, AppSuccess>> getBuyData(int type) async {
    try {
      final either = await repo.getBuyData(type);
      return either.fold(
        (error) => Left(AppError()),
        (data) {
          populateData(data);
          return Right(AppSuccess());
        },
      );
    } catch (error) {
      return Left(AppError(title: error.toString()));
    }
  }

  void populateData(BuyDataList homeData) {
    data = homeData.dataList;
  }
}
