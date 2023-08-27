import 'package:dio/dio.dart';
import 'package:pilema6/data/responses/error_response.dart';
import 'package:pilema6/models/data_result.dart';

extension RetrofitExt<T> on Future<T> {
  Future<BaseResult<T>> get awaitResponse async {
    try {
      return DataResult(await this);
    } on DioException catch (dioException) {
      final response = dioException.response;
      if (response == null) return ErrorResult('Response is Empty');
      final errorResponse = ErrorResponse.fromJson(response.data);
      return ErrorResult(errorResponse.message);
    } catch (e) {
      return ErrorResult(e.toString());
    }
  }
}
