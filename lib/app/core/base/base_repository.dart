import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:pets/app/core/network/dio_provider.dart';
import 'package:pets/app/core/network/exception/base_exception.dart';

import '../network/handler_error.dart';

abstract class BaseRepository {
  Dio get dioClient => DioProvider.httpDio;
  Dio get dioTokenClient => DioProvider.dioWithHeaderToken;

  Future<Response<T>> callApi<T>(Future<Response<T>> api) async {
    try {
      Response<T> response = await api;

      if (response.statusCode != HttpStatus.ok) {}

      return response;
    } on DioError {
      rethrow;
    } catch (error) {
      debugPrint("Generic error: $error");

      if (error is BaseException) {
        rethrow;
      }

      throw handleError("$error");
    }
  }
}
