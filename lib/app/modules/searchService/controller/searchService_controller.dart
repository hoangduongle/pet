import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/data/repository/repository.dart';

class SearchServiceController extends BaseController {
  final Repository _repository = Get.find(tag: (Repository).toString());
  TextEditingController searchTextController = TextEditingController();
  Rx<List<Service>> serviceData = Rx<List<Service>>([]);
  int cateId = -1;
  @override
  void onInit() {
    if (Get.arguments != null) {
      var data = Get.arguments as Map<String, dynamic>;
      if (data.containsKey('searchText')) {
        searchTextController.text = data['searchText'];
      }
      if (data.containsKey('searchCateId')) {
        cateId = data['searchCateId'];
      }
    }
    fetchApi(cateId);
    super.onInit();
  }

  Future<void> fetchApi(int cateId) async {
    var listCate = _repository.getListServicebyCateId(cateId);
    await callDataService(
      listCate,
      onSuccess: (List<Service> response) {
        serviceData(response);
      },
      onError: (DioError dioError) {},
    );
  }
}
