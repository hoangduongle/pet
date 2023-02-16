import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/core/model/user.dart';
import 'package:pets/app/data/repository/repository.dart';

class WellcomeController extends BaseController {
  final Repository _repository = Get.find(tag: (Repository).toString());

  Rx<List<User>> userContent = Rx<List<User>>([]);

  @override
  void onInit() {
    getAllUser();
    super.onInit();
  }

  Future<void> getAllUser() async {
    var future = _repository.getListUser();

    List<User> result = [];
    await callDataService(
      
      future,
      onSuccess: (List<User> response) {
        result = response;
      },
      onError: ((dioError) {}),
    );
    userContent(result);
  }
}
