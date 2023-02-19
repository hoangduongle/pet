import 'package:flutter/material.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/model/owner.dart';

class PetInfoController extends BaseController {
  int petOwnerId = -1;
  Rx<Owner?> petOwner = Rx<Owner?>(null);

  @override
  void onInit() {
    if (Get.arguments != null) {
      var data = Get.arguments as Map<String, dynamic>;
      if (data.containsKey('petOwner')) {
        petOwner(data['petOwner']);
      }
    }
    debugPrint(petOwner.toString());
    super.onInit();
  }
}
