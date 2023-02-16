// ignore_for_file: avoid_print, unused_field, unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/date_time_utils.dart';

class TokenManager extends Interceptor {
  static final TokenManager _instance = TokenManager._internal();
  static TokenManager get instance => _instance;
  TokenManager._internal();

  static const username = '';
  static const password = '';
  static const baseURL = 'https://petiny.azurewebsites.net/api/';

  String? _token;

  String get token {
    checkTokenValid();
    return _token ?? '';
  }

  bool get hasToken {
    checkTokenValid();
    return _token != null && _token.toString().isNotEmpty;
  }

  Future<void> saveToken(String? token) async {
    var prefs = await SharedPreferences.getInstance();
    if (_token != token && token != null) {
      _token = token;
      await prefs.setString('token', token);
    }
  }

  Future<void> init() async {
    var dio = Dio();
    Response response = await dio.post(baseURL,
        queryParameters: {'password': password, 'username': username});
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', response.data);
    _token = prefs.getString('token');
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer $_token';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    var response = err.response;
    if (response?.statusCode == 401) {
      clearToken();
    }
    super.onError(err, handler);
  }

  Future<void> clearToken() async {
    var prefs = await SharedPreferences.getInstance();
    _token = null;
    await prefs.remove('token');
  }

  Future<void> savePhonePassword(
    String? phone,
    String? password, {
    bool? mode,
  }) async {
    var storage = const FlutterSecureStorage();

    await storage.write(
      key: 'phone',
      value: phone,
    );
    await storage.write(
      key: 'password',
      value: password,
    );

    if (mode != null) {
      await storage.write(
        key: 'mode',
        value: mode ? 'true' : 'false',
      );
    }
  }

  void clearPhonePassword() {
    var storage = const FlutterSecureStorage();
    storage.delete(key: 'phone');
    storage.delete(key: 'password');
    storage.delete(key: 'mode');
  }

  Future<String?> getPhone() async {
    var storage = const FlutterSecureStorage();

    return await storage.read(
      key: 'phone',
    );
  }

  Future<String?> getPassword() async {
    var storage = const FlutterSecureStorage();

    return await storage.read(
      key: 'password',
    );
  }

  void checkTokenValid() {
    if (_token == null) return;
    Map<String, dynamic> payload = Jwt.parseJwt(_token.toString());

    DateTime? exp = DateTimeUtils.parseDateTime(payload['exp']);

    if (exp != null && exp.compareTo(DateTime.now()) > 0) {
      return;
    } else {
      _token = null;
    }
  }
}
