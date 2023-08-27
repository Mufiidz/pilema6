import 'package:dart_mappable/dart_mappable.dart';

part 'error_response.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ErrorResponse with ErrorResponseMappable {
  bool success;
  int statusCode;
  @MappableField(key: 'status_message')
  String message;

  ErrorResponse({
    this.success = false,
    this.statusCode = 0,
    this.message = '',
  });

  factory ErrorResponse.fromJson(dynamic json) {
    if (json is Map<String, dynamic>) return ErrorResponseMapper.fromMap(json);
    if (json is String) return ErrorResponseMapper.fromJson(json);
    return throw Exception(
        'The argument type \'${json.runtimeType}\' can\'t be assigned');
  }
}
