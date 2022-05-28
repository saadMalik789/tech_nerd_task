import 'dart:async';
import 'dart:convert';

import 'package:technerd_task/export.dart';

class CallsRepoImpl implements CallsRepo {
  final NetworkHelper _networkHelper;
  final EndPoints _endPoints;

  CallsRepoImpl(this._networkHelper, this._endPoints);

  @override
  Future<Either<AppError, CallDataList>> getCallData() async {
    try {
      final response = await _networkHelper.get(
        _endPoints.getCallData(),
      );
      if (response.statusCode == 200) {
        var data = json.decode(response.body.toString());
        return Right(CallDataList.fromJson(data));
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
