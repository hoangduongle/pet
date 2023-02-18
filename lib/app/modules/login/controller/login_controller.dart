import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/core/model/user.dart';
import 'package:pets/app/core/network/dio_token_manager.dart';
import 'package:pets/app/data/repository/repository.dart';
import 'package:pets/app/route/app_routes.dart';

class LoginController extends BaseController {
  final Repository _repository = Get.find(tag: (Repository).toString());

  final formKey = GlobalKey<FormState>();
  Rx<User?> userContent = Rx<User?>(null);
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  String? name;
  String? registerPassword;

  var pageLoading = false.obs;

  void submit() async {
    pageLoading.value = true;
    var loginService =
        _repository.login(phoneNumberController.text, pwdController.text);
    await callDataService(
      loginService,
      onSuccess: (User? response) {
        userContent(response);
      },
      onError: (DioError dioError) {
        var response = dioError.response;

        if (response != null &&
            response.data.toString().isNotEmpty &&
            response.data['detail'] == 'Invalid user name or password') {}
      },
    );
    await Future.delayed(const Duration(seconds: 1));

    TokenManager.instance.savePhonePassword(
      phoneNumberController.text,
      pwdController.text,
    );
    pageLoading.value = false;
    if (userContent != null) {
      Get.offAllNamed(Routes.MAIN);
    }
  }

  void aa() {
    if (Get.arguments != null) {
      var data = Get.arguments as Map<String, dynamic>;
      if (data.containsKey('phoneNumber')) {
        phoneNumberController.text = data['phoneNumber'];
      }
      if (data.containsKey('registerPassword')) {
        registerPassword = data['registerPassword'];
      }
    }
    if (TokenManager.instance.hasUser) {
      User user = TokenManager.instance.user!;
      // fullName = '${user.firstName} ${user.lastName}';
      if (phoneNumberController.text.isEmpty) {
        phoneNumberController.text = user.phone ?? '';
      }
    }

    // if (phoneNumberController.text.isEmpty) Get.offAllNamed(Routes.WELCOME);
    // TokenManager.instance
    //     .savePhonePassword(phoneNumberController.text, registerPassword);
  }
}
