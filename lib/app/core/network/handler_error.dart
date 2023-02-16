import 'package:flutter/cupertino.dart';

import 'exception/app_exception.dart';

Exception handleError(String error) {
  debugPrint("Generic exception: $error");

  return AppException(message: error);
}