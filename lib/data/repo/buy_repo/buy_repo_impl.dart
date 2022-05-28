import 'dart:async';
import 'dart:convert';

import 'package:technerd_task/export.dart';

class BuyRepoImpl implements BuyRepo {
  final NetworkHelper _networkHelper;
  final EndPoints _endPoints;

  BuyRepoImpl(this._networkHelper, this._endPoints);

  final DatabaseService _databaseService = DatabaseService();

  @override
  Future<Either<AppError, BuyDataList>> getBuyData(int type) async {
    try {
      if (type == 1) {
        final response = await _networkHelper.get(
          _endPoints.getBuyData(),
        );
        if (response.statusCode == 200) {
          var data = json.decode(response.body.toString());
          return Right(BuyDataList.fromJson(data));
        }
      } else {
        final response = await _databaseService.getSellData();
        return Right(BuyDataList.fromJson(response));
      }

      return Left(
        AppError(),
      );
    } catch (e) {
      return Left(
        AppError(title: e.toString()),
      );
    }
  }

}
