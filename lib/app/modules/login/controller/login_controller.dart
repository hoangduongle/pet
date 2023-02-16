import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/core/network/dio_token_manager.dart';
import 'package:pets/app/route/app_routes.dart';

class LoginController extends BaseController {
  String? password;
  var phoneNumber = ''.obs;
  String? name;

  String? registerPassword;

  void aa() {
    if (Get.arguments != null) {
      var data = Get.arguments as Map<String, dynamic>;
      if (data.containsKey('phoneNumber')) {
        phoneNumber = data['phoneNumber'];
      }
      if (data.containsKey('registerPassword')) {
        registerPassword = data['registerPassword'];
      }
    }

    if (phoneNumber.value.isEmpty) Get.offAllNamed(Routes.WELCOME);
    TokenManager.instance
        .savePhonePassword(phoneNumber.value, registerPassword);
  }
}
