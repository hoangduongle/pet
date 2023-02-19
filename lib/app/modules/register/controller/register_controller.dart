import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/core/model/user.dart';
import 'package:pets/app/data/repository/repository.dart';
import 'package:pets/app/modules/register/model/view_state.dart';

import '../../../core/widget/loading_dialog.dart';

class RegisterController extends BaseController {
  final formKey = GlobalKey<FormState>();
  final Repository _repository = Get.find(tag: (Repository).toString());
  Rx<List<User>> userContent = Rx<List<User>>([]);

  String phoneNumber = '';
  String password = '';
  String userInfos = '';

  var state = ViewState.normal.obs;

  var pageLoading = false.obs;

  Future<void> register() async {
    if (!formKey.currentState!.validate()) return;
    formKey.currentState!.save();

    pageLoading = true.obs;

    if (phoneNumber.isEmpty || password.isEmpty) return;

    User user = User(
        id: 0,
        name: phoneNumber,
        email: '',
        phone: phoneNumber,
        password: password,
        orders: null,
        owner: null);
    var registerUser = _repository.register(user);

    int result = 0;

    await callDataService(registerUser, onStart: () {
      LoadingDialog().showLoadingDialog(Get.context!);
    }, onSuccess: (int response) {
      result = response;
    }, onComplete: () {});
    await Future.delayed(const Duration(seconds: 2));

    pageLoading = false.obs;

    if (result == 201) {
      Get.back();
      state.value = ViewState.registerSuccess;
    }
  }
}
