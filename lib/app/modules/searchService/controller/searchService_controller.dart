import 'package:flutter/material.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:get/get.dart';

class SearchServiceController extends BaseController {
  TextEditingController searchTextController = TextEditingController();

  @override
  void onInit() {
    if (Get.arguments != null) {
      searchTextController.text = Get.arguments['searchText'];
    }

    debugPrint('onInit');
    super.onInit();
  }
}
