


import 'package:pets/app/core/network/exception/base_exception.dart';

class AppException extends BaseException {
  AppException({
    String message = "",
    String detail = "",
  }) : super(message: message, detail: detail);
}
