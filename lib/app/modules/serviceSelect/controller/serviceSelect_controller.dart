import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/utils/date_time_utils.dart';
import 'package:pets/app/modules/cart/controller/cart_controller.dart';
import 'package:pets/app/modules/serivce/controller/service_controller.dart';
import 'package:pets/app/modules/serviceSelect/model/radioBoxModel.dart';
import 'package:pets/app/modules/serviceSelect/model/radioModel.dart';
import 'package:pets/app/modules/serviceSelect/model/radioPetModel.dart';

class ServiceSelectController extends BaseController {
  var currentIndex = 0.obs;

  Rx<List<RadioModel>> sampleData = Rx<List<RadioModel>>([
    RadioModel(true, '0 - 3 kg', 120000),
    RadioModel(false, '3 - 5 kg', 150000),
    RadioModel(false, '5 - 10 kg', 180000),
    RadioModel(false, '10 - 15 kg', 210000),
    RadioModel(false, '15 - 20 kg', 250000),
  ]);

  Rx<List<RadioPetModel>> typePet = Rx<List<RadioPetModel>>([
    RadioPetModel(true, 'Chó'),
    RadioPetModel(false, 'Mèo'),
  ]);

  Rx<List<RadioBoxModel>> boxModelData = Rx<List<RadioBoxModel>>([
    RadioBoxModel(false, 'Cắt móng', 10000),
    RadioBoxModel(false, 'Tạo kiểu lông', 35000),
    RadioBoxModel(false, 'Vệ sinh tai', 15000),
  ]);

  Rx<Service?> serviceData = Rx<Service?>(null);

  ServiceController serviceController = Get.find<ServiceController>();

  String CategoryName(int cateId) {
    var result = serviceController.cateData.value
        .where((element) => element.id == cateId);
    return result.first.name!;
  }

  @override
  void onInit() {
    if (Get.arguments != null) {
      var data = Get.arguments as Map<String, dynamic>;
      if (data.containsKey('service')) {
        serviceData(data['service']);
      }
    }
    super.onInit();
  }

  var date = DateTimeUtils.currentDateTime().obs;
  get getTotal {
    double total = 0;
    for (var element in sampleData.value) {
      if (element.isSelected) {
        total += element.price;
      }
    }
    for (var element in boxModelData.value) {
      if (element.isSelected) {
        total += element.price;
      }
    }
    return total;
  }

  void addToCart() {
    CartController cartController = Get.find<CartController>();
    cartController.addService(
        Service(
          orderDetails: serviceData.value!.orderDetails,
          status: serviceData.value!.status,
          urlImage: serviceData.value!.urlImage,
          categoryId: 1,
          description: date.toString(),
          id: serviceData.value!.id,
          isCareService: serviceData.value!.isCareService,
          name: serviceData.value!.name,
          price: getTotal.toInt(),
          shopId: 1,
        ),
        1);
  }

  void addServicetoCart() {
    CartController cartController = Get.find<CartController>();
    cartController.addService(
        Service(
          categoryId: 1,
          description: '',
          id: 0,
          isCareService: false,
          name: '',
          price: 100000,
          shopId: 1,
        ),
        1);
  }
}
