import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/model/category.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/data/repository/repository.dart';

class ServiceController extends BaseController {
  Rx<List<Caterogies>> cateData = Rx<List<Caterogies>>([]);
  Rx<List<Service>> serviceData = Rx<List<Service>>([]);
  Rx<List<Service>> serviceDataSpecial = Rx<List<Service>>([]);
  final Repository _repository = Get.find(tag: (Repository).toString());
  var currentIndex = 0.obs;

  @override
  void onInit() async {
    init();
    fetchListService();
    fetchListServiceSpecial();
    super.onInit();
  }

  void init() async {
    var listCate = _repository.getCaterogy(true);
    await callDataService(
      listCate,
      onSuccess: (List<Caterogies> response) {
        cateData(response);
      },
      onError: (DioError dioError) {},
    );
  }

  void fetchListService() async {
    var listCate = _repository.getListService();
    await callDataService(
      listCate,
      onSuccess: (List<Service> response) {
        serviceData(response);
      },
      onError: (DioError dioError) {},
    );
    loadAllDataList();
  }

  void fetchListServiceSpecial() async {
    var listCate = _repository.getListServiceSpecialIsCare();
    await callDataService(
      listCate,
      onSuccess: (List<Service> response) {
        serviceDataSpecial(response);
      },
      onError: (DioError dioError) {},
    );
    loadAllDataList();
  }

  Rx<List<Service>> serviceCate2 = Rx<List<Service>>([]);
  Rx<List<Service>> serviceCate3 = Rx<List<Service>>([]);
  Rx<List<Service>> serviceCate4 = Rx<List<Service>>([]);

  void loadAllDataList() {
    for (var element in serviceData.value) {
      if (element.categoryId == 2) {
        serviceCate2.value.add(element);
      }
      if (element.categoryId == 3) {
        serviceCate3.value.add(element);
      }
      if (element.categoryId == 4) {
        serviceCate4.value.add(element);
      }
    }
    debugPrint(serviceCate2.value.length.toString());
  }
}
